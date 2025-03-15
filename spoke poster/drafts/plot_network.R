library(igraph)
library(ggraph)
library(ggplot2)
library(ggforce)
library(dplyr)
library(purrr)
library(RCy3)

# Load nodes and edges
edges = read.csv("edges.csv")
edges = edges |>
  mutate(name = paste(from, interaction, to))

nodes = data.frame(name = unique(c(edges$from, edges$to)))
nodes$location = case_when(
  nodes$name %in% c("Disease", "Symptom", "SideEffect", "ClinicalLab", "Anatomy") ~ "Physiological/Pathological Process",
  nodes$name %in% c("Pathway", "Reaction", "CellLine","CellType", "CellularComponent", "EnzymaticActivity", "BiologicalProcess", "MolecularFunction") ~ "Cellular Process",
  nodes$name %in% c("Protein", "ProteinFamily", "ProteinDomain", "PwGroup", "Complex") ~ "Proteins",
  nodes$name %in% c("Gene", "Chromosome", "Cytoband", "MiRNA", "Variant", "Haplotype") ~ "Genomic",
  nodes$name %in% c("SDOH", "Environment", "DietarySupplement", "Food", "Organism", "Location", "Blend", "PharmacologicClass", "Compound") ~ "Environment/Exposure",
  TRUE ~ "Uncategorized" # For any unclassified nodes
)

nodes$location = factor(nodes$location, levels = c("Environment/Exposure",
                                                   "Physiological/Pathological Process",
                                                   "Cellular Process",
                                                   "Proteins", "Genomic",
                                                   "Uncategorized"))

nodes$y = as.numeric(nodes$location) + rnorm(nrow(nodes), 0, 0.1)

nodes = nodes |>
  arrange(location) |>
  group_by(location) |>
  mutate(x = row_number()) |>
  ungroup()

graph = graph_from_data_frame(edges, directed = FALSE, vertices = nodes)

# Compute layout that clusters nodes of the same location together
layout = create_layout(graph, layout = "fr")

layout$y = -nodes$y
layout$x = nodes$x

node_colors = scale_fill_manual(values = c(
  "Disease" = "#F28E8E", "Symptom" = "#86A9E0", "SideEffect" = "#85C68E",
  "ClinicalLab" = "#C19AC8", "Anatomy" = "#F4B183", "CellType" = "#F9E79F", 
  "CellularComponent" = "#D7B89C", "EnzymaticActivity" = "#F7B6D2",
  "BiologicalProcess" = "#C0C0C0", "MolecularFunction" = "#A5D6C5",
  "Pathway" = "#F7C6A5", "Reaction" = "#B3CDE3",
  "Protein" = "#E5BAD0", "ProteinFamily" = "#C7E9B4", "ProteinDomain" = "#FFE5A5", 
  "PwGroup" = "#EED9C4", "Complex" = "#D9D9D9",
  "Gene" = "#A3D9A5", "Chromosome" = "#E6A07C", "Cytoband" = "#B5A5D6", 
  "MiRNA" = "#F4A3C0", "Variant" = "#A8DAB5", "Haplotype" = "#EBD49B",
  "SDOH" = "#CAB8A2", "Environment" = "#B3B3B3", "DietarySupplement" = "#A5C5E5",
  "Food" = "#CFE8B0", "Organism" = "#9CD6A2",
  "Location" = "#F4C0C0", "Blend" = "#E6A8A8", "PharmacologicClass" = "#FDD9A5",
  "Compound" = "#E6A87C",
  "Uncategorized" = "#C0C0C0"
))

# Plot with clusters
plt = ggraph(layout) +
  geom_edge_link(alpha = 1, color = "gray") +
  geom_node_point(aes(fill = name), size = 10, stroke = 1, shape = 21, color = "gray") +
  geom_node_text(aes(label = name), repel = TRUE, size = 5, nudge_x = 0, nudge_y = 0) +
  theme_void() +
  node_colors +
  theme(legend.position = "none")

ggsave(filename = "spoke_metagraph.png", plot = plt, dpi = 1200, height = 7, width = 8,
       device = "png")


# UCSF AI Day Posters



## **SPOKE & tKOI: Knowledge-Graph-Driven Biomedical Insights**

## **About the Projects**

This repository hosts two powerful **knowledge-graph-driven** tools for biomedical research:

1. **SPOKE (Scalable Precision Medicine Open Knowledge Engine)** – A **heterogeneous biomedical knowledge graph** integrating diverse biomedical datasets to enhance **precision medicine, drug discovery, and disease understanding**.
2. **tKOI (Transcriptomics Knowledge-graph-driven Omics Integration)** – A **network-based transcriptomics analysis pipeline** that leverages **large-scale knowledge graphs** to refine functional enrichment, uncover novel biological insights, and incorporate **cell-type specificity** in omics studies.

------

## **SPOKE: A Biomedical Knowledge Graph for Precision Medicine**

### **Overview**

**SPOKE** is a **scalable knowledge graph** that connects molecular biology, pharmacology, and clinical data by integrating **51 specialized biomedical databases** into a unified framework. With **33 node types** (e.g., genes, proteins, diseases) and **90 edge types** (relationships), SPOKE enables **integrative biomedical analysis** for disease research, drug repurposing, and personalized medicine.

### **Features**

- **Aggregates 51 biomedical databases**, integrating genetics, proteins, pathways, and clinical data.
- **Supports precision medicine** by linking **electronic health records (EHRs)** to a structured knowledge graph.
- **Semantic and hierarchical network design** enables multi-step knowledge discovery.
- **Large-scale graph processing** using **retrieval-augmented generation (RAG) and LLM integration**.

### **Infrastructure & Applications**

- **Knowledge graph structure**: Organizes biomedical entities across **five hierarchical domains** (environmental exposure, physiological processes, cellular processes, proteins, and genetics).
- **Clinical integration**: Embeds **EHR data** into SPOKE for personalized disease prediction.
- **Drug discovery & repurposing**: Identifies **network-driven associations** between genes, drugs, and diseases.
- **Microbiome research**: Investigates microbiome-host interactions via network connectivity.
- **LLM-enhanced analysis**: Integrates **large language models (LLMs)** to provide interpretable answers to biomedical queries.

### **Key Figures**

- **Figure 1**: Overview of SPOKE's **network structure and data sources**.
- **Figure 2**: SPOKE's **infrastructure**, linking biomedical data with **LLM and AI-driven knowledge retrieval**.
- **Figure 3**: Integration of **EHR data** to improve **disease prediction and patient stratification**.
- **Figure 4**: **RAG-LLM system**, retrieving structured knowledge from SPOKE for informed biomedical analysis.
- **Figure 5**: **Growth & adoption of SPOKE**, highlighting increased usage in precision medicine applications.

------

## **tKOI: Enhancing Transcriptomics with Knowledge Graphs**

### **Overview**

**tKOI (Transcriptomics Knowledge-graph-driven Omics Integration)** is a novel **pathway and network-based transcriptomics analysis pipeline** that integrates **large-scale knowledge graphs** to improve **functional enrichment, gene discovery, and cell-type-specific analysis** in omics studies.

### **Features**

- **Comparable to state-of-the-art tools** like **ClusterProfiler** for GO enrichment analysis.
- **Extends beyond GO & KEGG annotations**, identifying novel **network-driven biological pathways**.
- **Uncovers hidden disease-associated genes** that may not meet conventional statistical significance thresholds.
- **Cell-type specificity** enables more precise transcriptomic interpretations.

### **Validation & Applications**

- **GO Enrichment Validation**: Compared tKOI to **ClusterProfiler** across **Rheumatoid Arthritis, Colorectal Cancer, and Prostate Cancer datasets**, demonstrating strong consistency while uncovering **additional biological insights**.
- **Gene Discovery Beyond Experimental Significance**: Identifies genes that are **biologically relevant** but do not meet statistical thresholds in conventional differential expression analysis.
- **Simulation-Based Optimization**: Explored the effects of **log fold change (LFC) and p-value thresholds** to determine optimal **significance cutoffs** for enrichment.
- **Cell-Type-Specific Analysis**: Applied tKOI to a **Multiple Sclerosis (MS) dataset**, demonstrating **cell-type-aware enrichment** in **SPMS (Secondary Progressive MS)** vs. control samples.

### **Key Figures**

- **Figure 1**: tKOI pipeline overview and knowledge-graph integration.
- **Figure 2**: GO enrichment validation across **three disease datasets** (RA, CRC, PC).
- **Figure 3**: Retainment & discovery of significant genes, demonstrating **network-aware gene identification**.
- **Figure 4**: Simulation-based optimization of **statistical significance thresholds**.
- **Figure 5**: Cell-type-specific enrichment analysis in **MS**, showcasing tKOI’s ability to detect **cell-type-relevant pathways**.

## **Contributors**

### **SPOKE Team**

- **John H. Morris, Wanjun Gu, Karthik Soman, Rabia E. Akbas, Brett Smith, Gabriel Cerono, Braian Peetoom, Catalina Villouta-Reyes, Gundolf Schenk, Angela Rizk-Jackson, Lauren Sanders, Sylvain V. Costes, Yongmei Shi, Sharat Israni, Sui Huang, Peter W. Rose, Charlotte A. Nelson, Sergio E. Baranzini**

### **tKOI Team**

- **Wanjun Gu, Gianmarco Bellucci, Braian Peetoom, Maura McDonagh, Sergio Baranzini**

------

## **References**

- SPOKE: https://docs.google.com/document/d/1ZuWTGXAaU9Merl5l1F4D8byvq-_86l2zFV690Qk4Gww/edit?usp=sharing
- tKOI: https://docs.google.com/document/d/1XCDkCD2-rsA2b5SQZqfolxA9EZAOCytZBGAzKtImRjU/edit?usp=sharing
- UCSF, Institute of Systems Biology, NASA, UC San Diego, Matebio.ai

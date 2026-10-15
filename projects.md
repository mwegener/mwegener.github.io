# Methods & Projects

<div class="contact">
Analytic methods I use in research consultations, collaborations, and teaching. All work is done in R.
</div>

<!--
  Keep this page free of unpublished results (numbers, cut-offs, HRs/ORs, p-values)
  and don't name an unpublished study without the PI's OK.
  When a paper comes out, add it under "Selected projects" with its DOI.
-->

## Analytic methods

| Method | What it's used for | Applied in |
|---|---|---|
| **Data cleaning and wrangling** | Recoding, reshaping, handling missing values, joining tables | Clinical studies, EHR cohorts, teaching datasets |
| **Cohort extraction (EHR)** | Defining study and control groups in large databases | NIH *All of Us* (Cohort Builder, BigQuery) |
| **Descriptive statistics and Table 1** | Summaries and baseline comparisons between groups | Clinical studies, workshops |
| **Parametric and non-parametric tests** | t-test, ANOVA, Mann–Whitney, Kruskal–Wallis, χ², Spearman, Shapiro–Wilk | Clinical studies, workshops |
| **Multiple-testing correction** | Benjamini–Hochberg FDR, Holm | Clinical studies |
| **Diagnostic accuracy** | ROC/AUC, DeLong test, Youden cut-offs (sensitivity, specificity, PPV, NPV) | Cytopathology biomarker study |
| **Survival analysis** | Kaplan–Meier, log-rank, RMST, Cox PH, Schoenfeld diagnostics, stratified Cox | Cytopathology and oncology outcomes studies |
| **Logistic regression** | Odds ratios for binary outcomes, unadjusted to fully adjusted | EHR cohort studies |
| **Epidemiological measures** | Case fatality ratio, proportional morbidity, incidence per 100,000 | Outbreak workshops, public health surveillance |
| **Epidemic curves and spatial mapping** | Outbreak timelines; choropleth, point, and interactive maps (sf, plotly) | Outbreak workshops |
| **RNA-seq analysis** | QC, PCA, differential expression (DESeq2), volcano plots, heatmaps | Sequencing training |
| **Variant calling QC and annotation** | Quality filters, Ti/Tv, location, consequence, PolyPhen-2, clinical prioritization | Sequencing training |

## Selected projects

### Diagnostic survival analysis in CSF cytology [2026]{.date}
Survival analysis (Kaplan–Meier, RMST, Cox PH) of outcomes by diagnostic category for the International System for Serous Fluid Cytopathology. Published in *Cancer Cytopathology*: [doi:10.1002/cncy.70127](https://doi.org/10.1002/cncy.70127)

### Hepatitis C care cascades for persons with HIV/HCV coinfection [2019–2026]{.date}
Surveillance-based and clinic-based HCV care cascades across health department jurisdictions and Ryan White clinics, using Data to Care methods. See, for example, *Open Forum Infectious Diseases* ([doi:10.1093/ofid/ofaf412](https://doi.org/10.1093/ofid/ofaf412)) and *Sage Open Chronic Disease* ([doi:10.1177/27558428261492880](https://doi.org/10.1177/27558428261492880)).

## Open training materials

### R Hands-on Workshop Series
An eight-lesson course on data analysis in R (tidyverse and base R): from a messy outbreak dataset to clean data, Table 1, publication-ready plots, and your own functions. Includes student scripts, practice datasets, and an instructor guide.\
[Website](https://cwml.github.io/CWML-R-Hands-on-Workshop-Series/) · [GitHub](https://github.com/CWML/CWML-R-Hands-on-Workshop-Series)

### All of Us Researcher Workbench 2.0 Training
A step-by-step guide and slide deck for the *All of Us* Researcher Workbench 2.0: access, workspaces, cohort and dataset building, and analysis apps.\
[Website](https://cwml.github.io/All-of-Us-Training-Resources/) · [GitHub](https://github.com/CWML/All-of-Us-Training-Resources)

### R for Public Health: Sudan Ministry of Health Workshop
Three sessions on cleaning a cholera line list, summary statistics and epidemiological measures, and epidemic curves and maps.

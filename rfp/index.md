

## Delivery Requirements

The Vendor will follow model delivery requirements consistent with the model management/custodianship protocol outlined by the ORMGP in: *A Guide for Actively Managing Watershed-Scale Numerical Models in Ontario*, 2017.

The proposed model will not be considered delivered until the following conditions are met. All model files must be provided using an intuitive and clear naming convention. Key instructions on the naming convention and file extensions must be described within an accompanying readme file. The model delivery package must be void of any files that have no bearing on preparing model files, running the model, post-processing model outputs and viewing model results. Delivery of model files must be provided in four separate file directories:

1. Numerical Model Delivery: This directory contains all the data required to run a model and replicate the data contained in the (2.) Model Output directory. Sub-directories must include:
   1. Files: including raw model input: i.e., structural data, model control, and input parameters and baseline variables that remain constant for all model runs (where applicable);
   1. Supporting/corrected data: All data used to inform model development including: 
      1. project start-up data before and after data alteration (i.e., data corrections, infilling, interpolation, etc.);
      1. Database containing conceptual model surface constraints (e.g., geologic picks, control lines, fault lines, etc.)
      1. The conceptual model (hydrostratigraphic surfaces, isopachs and material properties)
   1. Model input data for (as sub-directories, where applicable):
      1. Calibration/validation/baseline model;
      1. Model scenario(s) – one sub-directory per scenario;
      1. Model uncertainty/sensitivity analysis;
      1. Particle tracks, drawdowns;
      1. All other model runs (e.g., steady-state, coarse/alternative resolution(s), regional model(s) used to produce boundary conditions, etc.);
   1. All digital project files (e.g. ArcGIS, QGIS, Manifold, FEFLOW, Viewlog, Visual MODFLOW, GMS, and/or Groundwater Vistas, etc.) used in building the model structure, preparing model input files and/or producing figures.
1. Numerical Model Output: Everything contained here must be reproducible using the files delivered in the (1.) Numerical Model Delivery directory. This directory is likely to become quite large and may require compressing. For large model outputs (>1TB), only the baseline/calibration model run(s) are required with the exception in cases where both transient and steady-state model runs were required, then at least one transient and one steady-state output must be included here for reproduction. ***The model will not be considered delivered until model outputs can be successfully reproduced using a third-party/independent machine***;
1. Model Executables: This directory will preserve model code used in the study recognizing that future updated versions of a model code might not work with the format of the delivered model files or where a source code is discontinued/unsupported and therefore becomes difficult to re-acquire. If model code or support software is open-source and freely accessible, a copy of the model executable and source code must be provided. This directory must also contain a readme file detailing the release date and the model code version employed. The readme file must also contain details of all associated support software (and versions) required to reproduce model results (e.g., the modelling software, data analysis/preparation software, post-processing and visualization software). A sub-directory should be placed here if there were any scripts and/or model code modifications made. To ensure the reproducibility of model results, either:
   1. The scripts used and relevant documentation outlining their instruction and rationale for their use must be provided;
   1. If model code modifications are made and the official release of the modelling software is inadequate to run the numerical model using input files provided, the modified source code (fully-commented where changes are made), a detailed and complete explanation of the model version from which the modifications were made and a description of and rationale for the modifications, and must be provided;
   1. In cases where the scripts/code modifications are deemed proprietary and will not be divulged as part of the model delivery, then the purpose of the scripts/code modifications must be fully described and ongoing support (such as a licensing agreement) must be agreed upon;
   1. If model code modifications only change model input and output formats, but do not alter numerical processes, then the model must be delivered in the standard model input file format that can be readily run using the official release of the modelling code.
1. Official and Approved Final Report: Final report must be provided in a \*.pdf format that includes full hyperlinked bookmarking to figures, tables, sections and sub-sections, and is not owner-locked, meaning a reader has the capability to copy text and add comments. Sub-directories must be provided that contain the model-derived results included within the report, including spatial data and tables used as part of model report figure development in standard formats, such as:
   1. Tabular data files – These should be provided in a clear and intuitive form. If delivered in the form of excel files, the files must remain un-linked to other excel files. It must be made clear as to the linkage between the table numbers in the report and the associated digital tables being delivered.  If scripts and/or third-party software have been used to develop tables and figures from model outputs, a complete description of the scripts and/or software must be included to ensure reproducibility;
   1. GIS files in standard and properly projected GIS shapefiles (\*.shp; \*.asc) with metadata following the Federal Geographic Data Committee (FGDC) Content Standards for Digital Geospatial Metadata; and,
   1. Images – Graphical software project files (e.g., MatLab, R, Microsoft Excel, Golden Grapher/Surfer, TecPlot, ParaView, etc.) used in creating any report charts and figures must be provided to ensure reproducibility.


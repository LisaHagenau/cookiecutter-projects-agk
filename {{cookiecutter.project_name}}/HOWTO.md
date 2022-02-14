What is the best way to start a new NGS project?

File storage:
* ak-backup: backup location for raw data and finished projects
* ak-analysis: server for current project analysis, included in daily backup (for 30 days)
* ak-compute/projects: file storage for raw data and large intermediate files, not included in backup


1. create new folder on ak-analysis following the nomenclature agreed on (date of sequencing run_sequencing platform_project/collaborator_organism_sequencing type) using cookiecutter
        - cookiecutter cookiecutter https://github.com/LisaHagenau/cookiecutter-projects-agk
2. fill in README.md template with things like sample info, Miso run ID, raw data backup folder, people responsible etc
3. copy raw data to ak-project (same project folder name) and symlink to project folder 
4. start analysis
    - how to handle analysis steps on other servers (brain, kaput) or on local PC?
        > use the same project folder structure and rsync results when finished (take care to only add data, not delete)
    - keep the output folders structured (e.g. bwa mem output goes into data/processed/bwa/)


```
├── HOWTO.md            <- this file
├── README.md           <- all high-level information on the project (collaborators, description, samples)
├── config              <- config files, e.g. conda environment yaml files go here
├── data
│   ├── intermediate    <- large intermediate data that can be deleted after analysis (e.g. bam files created during variant calling)
│   ├── processed       <- large output data needed for later analysis or computationally heavy to re-create (e.g. vcf files, mapped and sorted bam)
│   └── raw             <- the original raw data (fastq, fast5, ubam) goes here; the folder is ideally set to read-only
├── logs                <- all log files go here
├── metadata            <- all documents relating to the project and samples (e.g. sample sheets, documents from collaborator, Bioanalyzer results)
├── notebooks           <- R or Jupyter Notebooks detailing the data analysis steps
├── reports             <- reports on any data analysis steps, e.g. exploratory plots, FastQC output, DESeq Output (anything you would share with a collaborator as result)
│   └── figures
└── scripts             <- scripts used this project, e.g. bash files, R or Python scripts, SLURM scripts

What is the best way to start a new NGS project?

File storage:
* ak-backup: backup location for raw data and finished projects
* ak-analysis: server for current project analysis, included in daily backup (for 30 days)
* ak-compute/projects: file storage for raw data and large intermediate files, not included in backup


1. create new folder on ak-analysis following the nomenclature agreed on (date of sequencing run_sequencing platform_project/collaborator_organism_sequencing type) using cookiecutter
        - cookiecutter cookiecutter https://github.com/LisaHagenau/cookiecutter-projects-agk
2. fill in metadata markdown template with things like sample info, Miso run ID, raw data backup folder, people responsible etc
3. copy raw data to ak-project (same project folder name) and symlink to project folder 
4. start analysis
    - how to handle analysis steps on other servers (brain, kaput) or on local PC?
    - copy whole folder + structure and copy back when finished? track everything on github?


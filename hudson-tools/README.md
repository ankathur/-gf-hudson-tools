### hudson-tools.git

The hudson-tools repository contains files and scripts used by the gf-hudson Hudson server.

To get access to ODCS you need to use OIM to request "Generic.DEVELOPER_USER, ALM (Production)" or "generic.DEVELOEPR_ADMINISTRATOR, ALM (Production)" access.  Instructions to do this are [here](https://confluence.oraclecorp.com/confluence/display/ALM/Getting+Started#GettingStarted-ODCSIndividualAccess).  

Git commit notification emails are sent to gf-hudson-tools-commits_ww_grp.
Anyone can subscribe.

A copy of this git repository is pulled every 30 minutes to:
gf-hudson:/scratch/java_re_node/hudson_tools/

Note:  The legacy gf-hudson tools at
gf-hudson:/scratch/gf-hudson/export2/hudson/tools/
will point (symlink) back to the git repository until the jobs are updated to point directory to the new location of the repository.  

Our linux nodes and our zdt windos nodes all have a symlink from
   /gf-hudson-tools/hudson-tools/     -->
which point back to the git repo at
   gf-hudson:/scratch/java_re_node/hudson_tools/


----------

Layout of this git repository:
------------------------------
 - build-tools/    (Common files/scripts used by any of the gf-hudson jobs)
         - copyright/
         - findbugs/
         - cts/                (CTS runs)
         - job-scripts/$JOB_NAME/  (scripts specific to each job)
         - wls/         (Common code for wls jobs)
         - common/   (Common code generic)
         - daemonize/   (Source for daemonize, not currently used)
         - windows-config/    (Files used for gf-hudson windows nodes configuration)
 - gf-hudson-infra/    (gf-hudson server files)
         - backup/       (Back up scripts)
         - startup/       (Hudson startup, SMF files)
         - nexus/   (Nexus start up scripts)
         - node-setup/     (Files used for setting up  gf-hudson nodes)
 - jobs/       (Job-specific files used by the gf-hudson jobs)
	 - $JOB_NAME/    (name of the hudson job)
		 - scripts, config files      (files for the particular job)
- TODO file


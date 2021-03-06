##' dryworkflow: don't repeat yourself workflow for more efficient data analysis
##'
##' The \code{dryworkflow} package produces a project skeleton for
##' data analysis including \code{R} syntax files, report and
##' Makefiles. Given data files and documents, the skeleton is
##' generated with initial directories, template log files, template
##' \code{R} syntax for data checking and initial analysis, makefiles
##' and a \code{git} repository is initialised.
##'
##' @section Templates: \code{R} syntax templates for reading,
##'     cleaning, merging, summarising and analysing data and
##'     \code{Rmarkdown} and \code{Sweave} templates for reports. The
##'     function \code{\link{copyTemplates}} may be used to get copies
##'     of these templates which can then be modified for use when
##'     creating a project skeleton.
##'
##' @section Make and definitions: Makefiles are generated. The file
##'     \code{common.mk} provides pattern rules to produce
##'     \code{.Rout} and \code{.pdf} files from \code{R} syntax files
##'     and \code{.html}, \code{.pdf} and \code{.docx} files from
##'     \code{.Rmd} R markdown and \code{.Rnw} files.  The function
##'     \code{\link{copyCommonMk}} may be used to get a copy the
##'     \code{common.mk} file used by the installed version of the
##'     \code{dryworkflow} package. The latest version of
##'     \code{common.mk} can always be found at
##'     \url{https://github.com/petebaker/r-makefile-definitions}.
##'
##' @section .gitignore: A \code{.gitignore} file is created in the
##'     base project directory to indicate files not to be tracked by
##'     \code{git}.  The function \code{\link{copyGitIgnore}} may be
##'     used to get a copy the \code{.gitignore} file used by the
##'     installed version of the \code{dryworkflow} package. The
##'     latest version of \code{.gitignore} can always be found at
##'     \url{https://github.com/petebaker/r-gitignore}.
##'
##' @section Project Options: Note that option parameters are either
##'     set as an argument to the function
##'     \code{\link{createProjectSkeleton}} or automatically via
##'     global options using
##'     \code{getOption("dryworkflow")}. Customised options may be set
##'     in \code{.Rprofile} using global options and these will be set
##'     automatically when \code{dryworkflow} is loaded.
##'
##' @examples
##'
##' ## setting global options or put these in .Rprofile
##' 
##'\dontrun{
##'current.opts <- options()
##'options("dryworkflow" = list(git = list(user.name = "My Name", user.email = "myname@@email.com")))
##'library(dryworkflow)
##'options("dryworkflow")
##'}
##' 
##' ## A project with all default settings
##'
##' ## copy .csv file and codebook from dryWorkflow package
##' ## noting that normally you just place files in current directory
##' ## and then run 'createProjectSkeleton'
##' file.copy(system.file('demoFiles', 'small2.csv', package='dryworkflow'),
##'           'small2.csv')
##' file.copy(system.file('demoFiles', 'small2_codebook.csv',
##'                       package='dryworkflow'), 'small2_codebook.csv')
##'
##' ## NB: In practice, always check directories, R syntax  etc
##' ##     before using 'make'
##' createProjectSkeleton(dir.proj = "testProject2",
##'                       name.project = "Experiment 1",
##'                       dontmove = "dryworkflow-Ex.R")
##' 
##' @docType package
##' @name dryworkflow
##' @aliases dryworkflow dryworkflow-package
NULL

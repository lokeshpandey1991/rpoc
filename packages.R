# Install packages from a local miniCRAN repository
#
# Run this code on the SQL Server machine

pkgs_needed <- c("tidyr", "shinydashboard", "shinyBS", "shinyjs", "shinyWidgets", "ggplot2", "dplyr")
local_repo  <- "/opt/rpackages"


#

lib <- .libPaths()[1]

install.packages(pkgs_needed,
                 repos = file.path("file://", normalizePath(local_repo, winslash = "/")),
                 lib = lib,
                 type = "source",
                 dependencies = TRUE
                 )
#installed.packages()

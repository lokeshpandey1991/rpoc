# Install packages from a local Repository


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

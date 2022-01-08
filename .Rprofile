## Load .env if present
if (file.exists(".env")) {
  try(readRenviron(".env"), silent = TRUE)
}

## Set options for package repos
if (Sys.info()[['sysname']] %in% c('Linux', 'Windows')) {
  options(
    repos = c(RSPM = "https://packagemanager.rstudio.com/all/latest")
  )
} else {
  ## For Mac users, we'll default to installing from CRAN/MRAN instead, since
  ## RSPM does not yet support Mac binaries.
  options(
    repos = c(CRAN = "https://cran.rstudio.com/"), pkgType = "both"
  )
}

## Set other options
options(
  renv.config.repos.override = getOption("repos"),
  renv.config.auto.snapshot = FALSE, 
  renv.config.rspm.enabled = TRUE, 
  renv.config.install.shortcuts = TRUE, 
  renv.config.cache.enabled = TRUE,
  gargle_oauth_email = Sys.getenv("GOOGLE_OAUTH_EMAIL"),
  gargle_oauth_cache = "auth"
)


source("renv/activate.R")

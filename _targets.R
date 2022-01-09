################################################################################
#
# Project build script
#
################################################################################

# Load packages (in packages.R) and load project-specific functions in R folder
suppressPackageStartupMessages(source("packages.R"))
for (f in list.files(here::here("R"), full.names = TRUE)) source (f)


# Set build options ------------------------------------------------------------



# Groups of targets ------------------------------------------------------------

## Sampling
spatial_data <- tar_plan(
  country = get_country(),
  regions = get_regions(),
  districts = get_districts(),
  ta_areas = get_ta_areas(),
  lhz = get_lhz()
)

## Read raw data
raw_data <- tar_plan(
  mapping_data = read_mapping_data(),
  national_summary = mapping_data[[1]],
  district_summary = mapping_data[[2]],
  full_data = mapping_data[[3]]
)


## Process data
processed_data <- tar_plan(
  ##
)


## Analysis
analysis <- tar_plan(
  ##
)


## Outputs
outputs <- tar_plan(
  ##
)


## Reports
reports <- tar_plan(
  ##
)

## Deploy targets
deploy <- tar_plan(
  ##
)

## Set seed
set.seed(1977)

# Concatenate targets ----------------------------------------------------------
list(
  spatial_data,
  raw_data,
  processed_data,
  analysis,
  outputs,
  reports,
  deploy
)
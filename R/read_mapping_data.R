################################################################################
#
#'
#'
#
################################################################################

read_mapping_data <- function(path = "data/Final National Nutrition Mapping_Validated by Stakeholders Dec 2021.xlsx") {
  ## Read each of the three sheets
  sheet1 <- readxl::read_xlsx(
    path = path, 
    sheet = "Nat Nutrition Mapping Summary", 
    range = "B1:F226"
  )
  sheet2 <- readxl::read_xlsx(
    path = path, 
    sheet = "Summary Projects,DPS,IPS",
    range = "B1:E29")
  sheet3 <- readxl::read_xlsx(
    path = path, 
    sheet = "Final Nat Nut Mapping Data "
  )
  
  ## Concatenate sheets into list
  map_data <- list(
    `National Summary` = sheet1, 
    `District Summary` = sheet2, 
    `Full Data` = sheet3
  )
  
  ## Return
  map_data
}

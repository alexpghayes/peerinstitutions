## code to prepare `DATASET` dataset goes here

library(here)
library(fs)
library(glue)

years <- as.character(2010:2020)

for (year in years) {
  base_path <- glue("data-raw/{year}")
  zip_name <- list.files(base_path, pattern = "*.zip")
  zip_path <- glue("{base_path}/{zip_name}")

  messy_name <- unglue_vec(zip_name, "{messy_name}.zip")

  unzip(zip_path, exdir = base_path)

  bad_file_names <- list.files(base_path, pattern = messy_name, full.names = TRUE)
  good_file_names <- stringr::str_replace(bad_file_names, pattern = messy_name, year)

  file.rename(
    bad_file_names,
    good_file_names
  )
}

csvs <- list.files(path = "data-raw/", pattern = "*.csv", recursive = TRUE, full.names = TRUE)

# BREAKS HERE
readr::read_csv(csvs)


usethis::use_data(DATASET, overwrite = TRUE)

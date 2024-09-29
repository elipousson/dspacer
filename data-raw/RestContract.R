# Extract the pattern and arguments of DSpace REST API from documentation
# repository
#
# This is a WIP script started on 2024-09-29

library(tidyverse)
library(fs)

# https://github.com/DSpace/RestContract
dir <- "<path to downloaded RestContract repo>"

# List Markdown files in repo
rest_dir_info <- dir_info(
  dir, recurse = TRUE,
  glob = "*.md"
)

# Read lines from Markdown files
lines <- purrr::map(
  set_names(
    rest_dir_info$path,
    path_file(rest_dir_info$path)
  ),
  \(x) {
    lines <- readr::read_lines(x)
    lines_df <- tibble::tibble(lines)

    lines_df |>
      mutate(
        num = row_number(),
        # Extract headings
        heading_1 = stringr::str_extract(
          lines,
          "^#{1}[:space:].+"
        ),
        heading_2 = stringr::str_extract(
          lines,
          "^#{2}[:space:].+"
        ),
        # Extract API URLs
        api_url = stringr::str_extract(
          lines,
          "^\\*\\*/api/.+"
        ),
        # API URLs follow heading 2
        endpoint = if_else(
          !is.na(api_url),
          lag(heading_2),
          NA_character_
        ),
        # Extract parameters
        parameter = stringr::str_extract(
          lines,
          "^* `"
        )
      ) |>
      # Fill down
      tidyr::fill(heading_1, heading_2, api_url)
  }
)

# Convert list to data frame
lines_df <- lines |>
  list_rbind(names_to = "filename") |>
  mutate(
    index = row_number()
  )

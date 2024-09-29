#' Wrapper function for `httr2::request`
dspace_request <- function(base_url = NULL,
                           query = NULL,
                           path = NULL,
                           ...) {

  base_url <- base_url %||% getOption("dspacer.base_url")

  httr2::request(base_url) |>
    httr2::req_url_query(!!!query) |>
    httr2::req_url_path_append(path)
}

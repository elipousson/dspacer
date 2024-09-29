#' Helper function for building and performing a request
#'
#' @noRd
ds_request_template <- function(
    x = NULL,
    ...,
    query = NULL,
    path = NULL,
    simplifyVector = TRUE) {
  x <- x %||% getOption("dspacer.base_url")

  if (is_url(x)) {
    x <- dspace_request(x)
  }

  x |>
    httr2::req_url_query(!!!query) |>
    httr2::req_url_path_append(path) |>
    httr2::req_perform() |>
    httr2::resp_body_json(
      simplifyVector = simplifyVector
    )
}

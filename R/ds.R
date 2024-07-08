#' Helper function for building and performing a request
#'
#' @noRd
ds_request_template <- function(x = NULL, ..., simplifyVector = TRUE) {
  x <- x %||% getOption("dpacer.base_url")

  if (is_url(x)) {
    x <- dspace_request(x)
  }

  x |>
    ds_req_path_append(...) |>
    httr2::req_perform() |>
    httr2::resp_body_json(
      simplifyVector = simplifyVector
    )
}

#' Append a path to the request URL
#' @noRd
ds_req_path_append <- function(req, ..., .base = "core") {
  httr2::req_url_path_append(req, .base, ...)
}

#' List DSpace Collections, Items, or Communities
#'
#' @rdname ds_list
#' @name ds_collections
#' @export
ds_collections <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "collections")
}

#' @rdname ds_list
#' @name ds_items
#' @export
ds_items <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "items")
}

#' @rdname ds_list
#' @name ds_communities
#' @export
ds_communities <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "communities")
}

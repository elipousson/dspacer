#' Wrapper function for `httr2::request`
dspace_request <- function(base_url = getOption("dpacer.base_url"),
                           ...) {
  httr2::request(base_url)
}

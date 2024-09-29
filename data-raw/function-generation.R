source <- tibble::tribble(
  ~Link,                                                        ~URL,
  "/api/core/communities",             "/DSpace/RestContract/blob/main/communities.md",
  "/api/core/collections",             "/DSpace/RestContract/blob/main/collections.md",
  "/api/core/items",                   "/DSpace/RestContract/blob/main/items.md",
  "/api/core/itemtemplates",           "/DSpace/RestContract/blob/main/itemtemplates.md",
  "/api/core/bitstreams",              "/DSpace/RestContract/blob/main/bitstreams.md",
  "/api/core/bitstreamformats",        "/DSpace/RestContract/blob/main/bitstreamformats.md",
  "/api/core/bundles",                 "/DSpace/RestContract/blob/main/bundles.md",
  "/api/core/metadatafields",          "/DSpace/RestContract/blob/main/metadatafields.md",
  "/api/core/metadataschemas",         "/DSpace/RestContract/blob/main/metadataschemas.md",
  "/api/core/epersons",                "/DSpace/RestContract/blob/main/epersons.md",
  "/api/eperson/orcidqueues",             "/DSpace/RestContract/blob/main/orcidqueues.md",
  "/api/eperson/orcidhistories",          "/DSpace/RestContract/blob/main/orcidhistories.md",
  "/api/eperson/profiles",                "/DSpace/RestContract/blob/main/profiles.md",
  "/api/core/groups",           "/DSpace/RestContract/blob/main/epersongroups.md",
  "/api/authn/login",          "/DSpace/RestContract/blob/main/authentication.md",
  "/api/authn/logout",          "/DSpace/RestContract/blob/main/authentication.md",
  "/api/authn/status",          "/DSpace/RestContract/blob/main/authentication.md",
  "/api/config/harvestermetadata",       "/DSpace/RestContract/blob/main/harvestermetadata.md",
  "/api/config/submissiondefinitions",   "/DSpace/RestContract/blob/main/submissiondefinitions.md",
  "/api/config/submissionsections",      "/DSpace/RestContract/blob/main/submissionsections.md",
  "/api/config/submissionforms",         "/DSpace/RestContract/blob/main/submissionforms.md",
  "/api/config/submissionuploads",       "/DSpace/RestContract/blob/main/submissionuploads.md",
  "/api/config/submissionaccessoptions", "/DSpace/RestContract/blob/main/submissionaccessoptions.md",
  "/api/config/workflowdefinitions",     "/DSpace/RestContract/blob/main/workflowdefinitions.md",
  "/api/config/workflowsteps",           "/DSpace/RestContract/blob/main/workflowsteps.md",
  "/api/discover/browses",                 "/DSpace/RestContract/blob/main/browses.md",
  "/api/discover/search",         "/DSpace/RestContract/blob/main/search-endpoint.md",
  "/api/submission/workspaceitems",          "/DSpace/RestContract/blob/main/workspaceitems.md",
  "/api/submission/vocabularies",            "/DSpace/RestContract/blob/main/vocabularies.md",
  "/api/submission/vocabularyEntryDetails",  "/DSpace/RestContract/blob/main/vocabularyEntryDetails.md",
  "/api/system/systemwidealerts",        "/DSpace/RestContract/blob/main/systemwidealerts.md",
  "/api/versioning/versions",                "/DSpace/RestContract/blob/main/versions.md",
  "/api/versioning/versionhistories",        "/DSpace/RestContract/blob/main/versionhistories.md",
  "/api/workflow/workflowitems",           "/DSpace/RestContract/blob/main/workflowitems.md",
  "/api/workflow/pooltasks",               "/DSpace/RestContract/blob/main/pooltasks.md",
  "/api/workflow/claimedtasks",            "/DSpace/RestContract/blob/main/claimedtasks.md",
  "/api/tools/feedbacks",               "/DSpace/RestContract/blob/main/feedbacks.md",
  "/api/integration/qualityassurancesources", "/DSpace/RestContract/blob/main/qualityassurancesources.md",
  "/api/integration/qualityassurancetopics",  "/DSpace/RestContract/blob/main/qualityassurancetopics.md",
  "/api/integration/qualityassuranceevents",  "/DSpace/RestContract/blob/main/qualityassuranceevents.md",
  "/api/integration/suggestions",             "/DSpace/RestContract/blob/main/suggestions.md",
  "/api/integration/suggestionsources",       "/DSpace/RestContract/blob/main/suggestionsources.md",
  "/api/integration/suggestiontargets",       "/DSpace/RestContract/blob/main/suggestiontargets.md",
  "/api/submission/duplicates",              "/DSpace/RestContract/blob/main/duplicates.md"
) |>
  arrange(Link)


api_reference <- source |>
  pull(Link, name = URL)

api_reference <- api_reference |>
  stringr::str_split(
    pattern = "/"
  ) |>
  set_names(
    names(api_reference)
  )

api_lines <- api_reference |>
  imap_chr(
    \(x, idx) {
      paste0(
        "#' @rdname ds_", x[3], "\n",
        "#' @name ds_", x[4], "\n",
        "#' @details <https://github.com", idx, ">\n",
        "#' @export\n",
        "ds_", x[4], " <- function(x = NULL, ..., simplifyVector = TRUE) {\n",
        '  ds_request_template(\n  x = x,\n...,\n  path = list("',
        x[3], '", "', x[4], '"),\n  simplifyVector = simplifyVector)\n',
        "}\n"
      )
    }
  )

api_functions <- api_reference |>
  map_chr(
    \(x) {
      x[3]
    }
  ) |>
  unique() |>
  map_chr(
    \(x) {
      paste0(
        "#' DSpace ", x, " functions\n#'\n",
        "#' @name ds_", x, "\n",
        "NULL\n"
      )
    }
  )

c(
  api_functions,
  api_lines
) |>
  # sort() |>
  paste0(collapse = "\n") |>
  write_lines(
    here::here(
      "R", "ds_api.R"
    )
  )

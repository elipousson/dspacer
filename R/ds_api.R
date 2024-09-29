#' DSpace authn functions
#'
#' @name ds_authn
NULL

#' DSpace config functions
#'
#' @name ds_config
NULL

#' DSpace core functions
#'
#' @name ds_core
NULL

#' DSpace discover functions
#'
#' @name ds_discover
NULL

#' DSpace eperson functions
#'
#' @name ds_eperson
NULL

#' DSpace integration functions
#'
#' @name ds_integration
NULL

#' DSpace submission functions
#'
#' @name ds_submission
NULL

#' DSpace system functions
#'
#' @name ds_system
NULL

#' DSpace tools functions
#'
#' @name ds_tools
NULL

#' DSpace versioning functions
#'
#' @name ds_versioning
NULL

#' DSpace workflow functions
#'
#' @name ds_workflow
NULL

#' @rdname ds_authn
#' @name ds_login
#' @details <https://github.com/DSpace/RestContract/blob/main/authentication.md>
#' @export
ds_login <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("authn", "login"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_authn
#' @name ds_logout
#' @details <https://github.com/DSpace/RestContract/blob/main/authentication.md>
#' @export
ds_logout <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("authn", "logout"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_authn
#' @name ds_status
#' @details <https://github.com/DSpace/RestContract/blob/main/authentication.md>
#' @export
ds_status <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("authn", "status"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_config
#' @name ds_harvestermetadata
#' @details <https://github.com/DSpace/RestContract/blob/main/harvestermetadata.md>
#' @export
ds_harvestermetadata <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("config", "harvestermetadata"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_config
#' @name ds_submissionaccessoptions
#' @details <https://github.com/DSpace/RestContract/blob/main/submissionaccessoptions.md>
#' @export
ds_submissionaccessoptions <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("config", "submissionaccessoptions"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_config
#' @name ds_submissiondefinitions
#' @details <https://github.com/DSpace/RestContract/blob/main/submissiondefinitions.md>
#' @export
ds_submissiondefinitions <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("config", "submissiondefinitions"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_config
#' @name ds_submissionforms
#' @details <https://github.com/DSpace/RestContract/blob/main/submissionforms.md>
#' @export
ds_submissionforms <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("config", "submissionforms"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_config
#' @name ds_submissionsections
#' @details <https://github.com/DSpace/RestContract/blob/main/submissionsections.md>
#' @export
ds_submissionsections <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("config", "submissionsections"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_config
#' @name ds_submissionuploads
#' @details <https://github.com/DSpace/RestContract/blob/main/submissionuploads.md>
#' @export
ds_submissionuploads <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("config", "submissionuploads"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_config
#' @name ds_workflowdefinitions
#' @details <https://github.com/DSpace/RestContract/blob/main/workflowdefinitions.md>
#' @export
ds_workflowdefinitions <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("config", "workflowdefinitions"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_config
#' @name ds_workflowsteps
#' @details <https://github.com/DSpace/RestContract/blob/main/workflowsteps.md>
#' @export
ds_workflowsteps <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("config", "workflowsteps"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_core
#' @name ds_bitstreamformats
#' @details <https://github.com/DSpace/RestContract/blob/main/bitstreamformats.md>
#' @export
ds_bitstreamformats <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("core", "bitstreamformats"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_core
#' @name ds_bitstreams
#' @details <https://github.com/DSpace/RestContract/blob/main/bitstreams.md>
#' @export
ds_bitstreams <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("core", "bitstreams"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_core
#' @name ds_bundles
#' @details <https://github.com/DSpace/RestContract/blob/main/bundles.md>
#' @export
ds_bundles <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("core", "bundles"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_core
#' @name ds_collections
#' @details <https://github.com/DSpace/RestContract/blob/main/collections.md>
#' @export
ds_collections <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("core", "collections"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_core
#' @name ds_communities
#' @details <https://github.com/DSpace/RestContract/blob/main/communities.md>
#' @export
ds_communities <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("core", "communities"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_core
#' @name ds_epersons
#' @details <https://github.com/DSpace/RestContract/blob/main/epersons.md>
#' @export
ds_epersons <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("core", "epersons"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_core
#' @name ds_groups
#' @details <https://github.com/DSpace/RestContract/blob/main/epersongroups.md>
#' @export
ds_groups <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("core", "groups"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_core
#' @name ds_items
#' @details <https://github.com/DSpace/RestContract/blob/main/items.md>
#' @export
ds_items <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("core", "items"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_core
#' @name ds_itemtemplates
#' @details <https://github.com/DSpace/RestContract/blob/main/itemtemplates.md>
#' @export
ds_itemtemplates <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("core", "itemtemplates"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_core
#' @name ds_metadatafields
#' @details <https://github.com/DSpace/RestContract/blob/main/metadatafields.md>
#' @export
ds_metadatafields <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("core", "metadatafields"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_core
#' @name ds_metadataschemas
#' @details <https://github.com/DSpace/RestContract/blob/main/metadataschemas.md>
#' @export
ds_metadataschemas <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("core", "metadataschemas"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_discover
#' @name ds_browses
#' @details <https://github.com/DSpace/RestContract/blob/main/browses.md>
#' @export
ds_browses <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("discover", "browses"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_discover
#' @name ds_search
#' @details <https://github.com/DSpace/RestContract/blob/main/search-endpoint.md>
#' @export
ds_search <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("discover", "search"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_eperson
#' @name ds_orcidhistories
#' @details <https://github.com/DSpace/RestContract/blob/main/orcidhistories.md>
#' @export
ds_orcidhistories <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("eperson", "orcidhistories"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_eperson
#' @name ds_orcidqueues
#' @details <https://github.com/DSpace/RestContract/blob/main/orcidqueues.md>
#' @export
ds_orcidqueues <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("eperson", "orcidqueues"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_eperson
#' @name ds_profiles
#' @details <https://github.com/DSpace/RestContract/blob/main/profiles.md>
#' @export
ds_profiles <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("eperson", "profiles"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_integration
#' @name ds_qualityassuranceevents
#' @details <https://github.com/DSpace/RestContract/blob/main/qualityassuranceevents.md>
#' @export
ds_qualityassuranceevents <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("integration", "qualityassuranceevents"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_integration
#' @name ds_qualityassurancesources
#' @details <https://github.com/DSpace/RestContract/blob/main/qualityassurancesources.md>
#' @export
ds_qualityassurancesources <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("integration", "qualityassurancesources"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_integration
#' @name ds_qualityassurancetopics
#' @details <https://github.com/DSpace/RestContract/blob/main/qualityassurancetopics.md>
#' @export
ds_qualityassurancetopics <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("integration", "qualityassurancetopics"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_integration
#' @name ds_suggestions
#' @details <https://github.com/DSpace/RestContract/blob/main/suggestions.md>
#' @export
ds_suggestions <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("integration", "suggestions"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_integration
#' @name ds_suggestionsources
#' @details <https://github.com/DSpace/RestContract/blob/main/suggestionsources.md>
#' @export
ds_suggestionsources <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("integration", "suggestionsources"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_integration
#' @name ds_suggestiontargets
#' @details <https://github.com/DSpace/RestContract/blob/main/suggestiontargets.md>
#' @export
ds_suggestiontargets <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("integration", "suggestiontargets"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_submission
#' @name ds_duplicates
#' @details <https://github.com/DSpace/RestContract/blob/main/duplicates.md>
#' @export
ds_duplicates <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("submission", "duplicates"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_submission
#' @name ds_vocabularies
#' @details <https://github.com/DSpace/RestContract/blob/main/vocabularies.md>
#' @export
ds_vocabularies <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("submission", "vocabularies"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_submission
#' @name ds_vocabularyEntryDetails
#' @details <https://github.com/DSpace/RestContract/blob/main/vocabularyEntryDetails.md>
#' @export
ds_vocabularyEntryDetails <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("submission", "vocabularyEntryDetails"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_submission
#' @name ds_workspaceitems
#' @details <https://github.com/DSpace/RestContract/blob/main/workspaceitems.md>
#' @export
ds_workspaceitems <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("submission", "workspaceitems"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_system
#' @name ds_systemwidealerts
#' @details <https://github.com/DSpace/RestContract/blob/main/systemwidealerts.md>
#' @export
ds_systemwidealerts <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("system", "systemwidealerts"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_tools
#' @name ds_feedbacks
#' @details <https://github.com/DSpace/RestContract/blob/main/feedbacks.md>
#' @export
ds_feedbacks <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("tools", "feedbacks"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_versioning
#' @name ds_versionhistories
#' @details <https://github.com/DSpace/RestContract/blob/main/versionhistories.md>
#' @export
ds_versionhistories <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("versioning", "versionhistories"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_versioning
#' @name ds_versions
#' @details <https://github.com/DSpace/RestContract/blob/main/versions.md>
#' @export
ds_versions <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("versioning", "versions"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_workflow
#' @name ds_claimedtasks
#' @details <https://github.com/DSpace/RestContract/blob/main/claimedtasks.md>
#' @export
ds_claimedtasks <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("workflow", "claimedtasks"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_workflow
#' @name ds_pooltasks
#' @details <https://github.com/DSpace/RestContract/blob/main/pooltasks.md>
#' @export
ds_pooltasks <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("workflow", "pooltasks"),
    simplifyVector = simplifyVector
  )
}

#' @rdname ds_workflow
#' @name ds_workflowitems
#' @details <https://github.com/DSpace/RestContract/blob/main/workflowitems.md>
#' @export
ds_workflowitems <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(
    x = x,
    ...,
    path = list("workflow", "workflowitems"),
    simplifyVector = simplifyVector
  )
}

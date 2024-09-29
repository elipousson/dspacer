#' @rdname ds_communities
#' @name ds_communities
#' @export
ds_communities <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "core", "communities")
}
#' @rdname ds_collections
#' @name ds_collections
#' @export
ds_collections <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "core", "collections")
}
#' @rdname ds_items
#' @name ds_items
#' @export
ds_items <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "core", "items")
}
#' @rdname ds_itemtemplates
#' @name ds_itemtemplates
#' @export
ds_itemtemplates <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "core", "itemtemplates")
}
#' @rdname ds_bitstreams
#' @name ds_bitstreams
#' @export
ds_bitstreams <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "core", "bitstreams")
}
#' @rdname ds_bitstreamformats
#' @name ds_bitstreamformats
#' @export
ds_bitstreamformats <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "core", "bitstreamformats")
}
#' @rdname ds_bundles
#' @name ds_bundles
#' @export
ds_bundles <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "core", "bundles")
}
#' @rdname ds_metadatafields
#' @name ds_metadatafields
#' @export
ds_metadatafields <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "core", "metadatafields")
}
#' @rdname ds_metadataschemas
#' @name ds_metadataschemas
#' @export
ds_metadataschemas <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "core", "metadataschemas")
}
#' @rdname ds_epersons
#' @name ds_epersons
#' @export
ds_epersons <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "core", "epersons")
}
#' @rdname ds_orcidqueues
#' @name ds_orcidqueues
#' @export
ds_orcidqueues <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "eperson", "orcidqueues")
}
#' @rdname ds_orcidhistories
#' @name ds_orcidhistories
#' @export
ds_orcidhistories <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "eperson", "orcidhistories")
}
#' @rdname ds_profiles
#' @name ds_profiles
#' @export
ds_profiles <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "eperson", "profiles")
}
#' @rdname ds_groups
#' @name ds_groups
#' @export
ds_groups <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "core", "groups")
}
#' @rdname ds_login
#' @name ds_login
#' @export
ds_login <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "authn", "login")
}
#' @rdname ds_logout
#' @name ds_logout
#' @export
ds_logout <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "authn", "logout")
}
#' @rdname ds_status
#' @name ds_status
#' @export
ds_status <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "authn", "status")
}
#' @rdname ds_harvestermetadata
#' @name ds_harvestermetadata
#' @export
ds_harvestermetadata <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "config", "harvestermetadata")
}
#' @rdname ds_submissiondefinitions
#' @name ds_submissiondefinitions
#' @export
ds_submissiondefinitions <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "config", "submissiondefinitions")
}
#' @rdname ds_submissionsections
#' @name ds_submissionsections
#' @export
ds_submissionsections <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "config", "submissionsections")
}
#' @rdname ds_submissionforms
#' @name ds_submissionforms
#' @export
ds_submissionforms <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "config", "submissionforms")
}
#' @rdname ds_submissionuploads
#' @name ds_submissionuploads
#' @export
ds_submissionuploads <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "config", "submissionuploads")
}
#' @rdname ds_submissionaccessoptions
#' @name ds_submissionaccessoptions
#' @export
ds_submissionaccessoptions <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "config", "submissionaccessoptions")
}
#' @rdname ds_workflowdefinitions
#' @name ds_workflowdefinitions
#' @export
ds_workflowdefinitions <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "config", "workflowdefinitions")
}
#' @rdname ds_workflowsteps
#' @name ds_workflowsteps
#' @export
ds_workflowsteps <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "config", "workflowsteps")
}
#' @rdname ds_browses
#' @name ds_browses
#' @export
ds_browses <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "discover", "browses")
}
#' @rdname ds_search
#' @name ds_search
#' @export
ds_search <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "discover", "search")
}
#' @rdname ds_workspaceitems
#' @name ds_workspaceitems
#' @export
ds_workspaceitems <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "submission", "workspaceitems")
}
#' @rdname ds_vocabularies
#' @name ds_vocabularies
#' @export
ds_vocabularies <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "submission", "vocabularies")
}
#' @rdname ds_vocabularyEntryDetails
#' @name ds_vocabularyEntryDetails
#' @export
ds_vocabularyEntryDetails <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "submission", "vocabularyEntryDetails")
}
#' @rdname ds_systemwidealerts
#' @name ds_systemwidealerts
#' @export
ds_systemwidealerts <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "system", "systemwidealerts")
}
#' @rdname ds_versions
#' @name ds_versions
#' @export
ds_versions <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "versioning", "versions")
}
#' @rdname ds_versionhistories
#' @name ds_versionhistories
#' @export
ds_versionhistories <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "versioning", "versionhistories")
}
#' @rdname ds_workflowitems
#' @name ds_workflowitems
#' @export
ds_workflowitems <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "workflow", "workflowitems")
}
#' @rdname ds_pooltasks
#' @name ds_pooltasks
#' @export
ds_pooltasks <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "workflow", "pooltasks")
}
#' @rdname ds_claimedtasks
#' @name ds_claimedtasks
#' @export
ds_claimedtasks <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "workflow", "claimedtasks")
}
#' @rdname ds_feedbacks
#' @name ds_feedbacks
#' @export
ds_feedbacks <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "tools", "feedbacks")
}
#' @rdname ds_qualityassurancesources
#' @name ds_qualityassurancesources
#' @export
ds_qualityassurancesources <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "integration", "qualityassurancesources")
}
#' @rdname ds_qualityassurancetopics
#' @name ds_qualityassurancetopics
#' @export
ds_qualityassurancetopics <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "integration", "qualityassurancetopics")
}
#' @rdname ds_qualityassuranceevents
#' @name ds_qualityassuranceevents
#' @export
ds_qualityassuranceevents <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "integration", "qualityassuranceevents")
}
#' @rdname ds_suggestions
#' @name ds_suggestions
#' @export
ds_suggestions <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "integration", "suggestions")
}
#' @rdname ds_suggestionsources
#' @name ds_suggestionsources
#' @export
ds_suggestionsources <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "integration", "suggestionsources")
}
#' @rdname ds_suggestiontargets
#' @name ds_suggestiontargets
#' @export
ds_suggestiontargets <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "integration", "suggestiontargets")
}
#' @rdname ds_duplicates
#' @name ds_duplicates
#' @export
ds_duplicates <- function(x = NULL, ..., simplifyVector = TRUE) {
  ds_request_template(x, "submission", "duplicates")
}

# OEML - REST API
#
# This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
#
# The version of the OpenAPI document: v1
# Contact: support@coinapi.io
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ValidationError
#'
#' @description ValidationError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field type  character [optional]
#'
#' @field title  character [optional]
#'
#' @field status  numeric [optional]
#'
#' @field traceId  character [optional]
#'
#' @field errors  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ValidationError <- R6::R6Class(
  'ValidationError',
  public = list(
    `type` = NULL,
    `title` = NULL,
    `status` = NULL,
    `traceId` = NULL,
    `errors` = NULL,
    initialize = function(
        `type`=NULL, `title`=NULL, `status`=NULL, `traceId`=NULL, `errors`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!is.null(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!is.null(`status`)) {
        self$`status` <- `status`
      }
      if (!is.null(`traceId`)) {
        stopifnot(is.character(`traceId`), length(`traceId`) == 1)
        self$`traceId` <- `traceId`
      }
      if (!is.null(`errors`)) {
        stopifnot(is.character(`errors`), length(`errors`) == 1)
        self$`errors` <- `errors`
      }
    },
    toJSON = function() {
      ValidationErrorObject <- list()
      if (!is.null(self$`type`)) {
        ValidationErrorObject[['type']] <-
          self$`type`
      }
      if (!is.null(self$`title`)) {
        ValidationErrorObject[['title']] <-
          self$`title`
      }
      if (!is.null(self$`status`)) {
        ValidationErrorObject[['status']] <-
          self$`status`
      }
      if (!is.null(self$`traceId`)) {
        ValidationErrorObject[['traceId']] <-
          self$`traceId`
      }
      if (!is.null(self$`errors`)) {
        ValidationErrorObject[['errors']] <-
          self$`errors`
      }

      ValidationErrorObject
    },
    fromJSON = function(ValidationErrorJson) {
      ValidationErrorObject <- jsonlite::fromJSON(ValidationErrorJson)
      if (!is.null(ValidationErrorObject$`type`)) {
        self$`type` <- ValidationErrorObject$`type`
      }
      if (!is.null(ValidationErrorObject$`title`)) {
        self$`title` <- ValidationErrorObject$`title`
      }
      if (!is.null(ValidationErrorObject$`status`)) {
        self$`status` <- ValidationErrorObject$`status`
      }
      if (!is.null(ValidationErrorObject$`traceId`)) {
        self$`traceId` <- ValidationErrorObject$`traceId`
      }
      if (!is.null(ValidationErrorObject$`errors`)) {
        self$`errors` <- ValidationErrorObject$`errors`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`type`)) {
        sprintf(
        '"type":
          "%s"
                ',
        self$`type`
        )},
        if (!is.null(self$`title`)) {
        sprintf(
        '"title":
          "%s"
                ',
        self$`title`
        )},
        if (!is.null(self$`status`)) {
        sprintf(
        '"status":
          %d
                ',
        self$`status`
        )},
        if (!is.null(self$`traceId`)) {
        sprintf(
        '"traceId":
          "%s"
                ',
        self$`traceId`
        )},
        if (!is.null(self$`errors`)) {
        sprintf(
        '"errors":
          "%s"
                ',
        self$`errors`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ValidationErrorJson) {
      ValidationErrorObject <- jsonlite::fromJSON(ValidationErrorJson)
      self$`type` <- ValidationErrorObject$`type`
      self$`title` <- ValidationErrorObject$`title`
      self$`status` <- ValidationErrorObject$`status`
      self$`traceId` <- ValidationErrorObject$`traceId`
      self$`errors` <- ValidationErrorObject$`errors`
      self
    }
  )
)

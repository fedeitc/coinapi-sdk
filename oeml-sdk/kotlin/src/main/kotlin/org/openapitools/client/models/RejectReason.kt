/**
 * OEML - REST API
 *
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.models


import com.squareup.moshi.Json

/**
 * Cause of rejection.
 *
 * Values: oTHER,eXCHANGEUNREACHABLE,eXCHANGERESPONSETIMEOUT,oRDERIDNOTFOUND,iNVALIDTYPE,mETHODNOTSUPPORTED,jSONERROR
 */

enum class RejectReason(val value: kotlin.String) {

    @Json(name = "OTHER")
    oTHER("OTHER"),

    @Json(name = "EXCHANGE_UNREACHABLE")
    eXCHANGEUNREACHABLE("EXCHANGE_UNREACHABLE"),

    @Json(name = "EXCHANGE_RESPONSE_TIMEOUT")
    eXCHANGERESPONSETIMEOUT("EXCHANGE_RESPONSE_TIMEOUT"),

    @Json(name = "ORDER_ID_NOT_FOUND")
    oRDERIDNOTFOUND("ORDER_ID_NOT_FOUND"),

    @Json(name = "INVALID_TYPE")
    iNVALIDTYPE("INVALID_TYPE"),

    @Json(name = "METHOD_NOT_SUPPORTED")
    mETHODNOTSUPPORTED("METHOD_NOT_SUPPORTED"),

    @Json(name = "JSON_ERROR")
    jSONERROR("JSON_ERROR");

    /**
     * Override toString() to avoid using the enum variable name as the value, and instead use
     * the actual value defined in the API spec file.
     *
     * This solves a problem when the variable name and its value are different, and ensures that
     * the client sends the correct enum values to the server always.
     */
    override fun toString(): String = value

    companion object {
        /**
         * Converts the provided [data] to a [String] on success, null otherwise.
         */
        fun encode(data: kotlin.Any?): kotlin.String? = if (data is RejectReason) "$data" else null

        /**
         * Returns a valid [RejectReason] for [data], null otherwise.
         */
        fun decode(data: kotlin.Any?): RejectReason? = data?.let {
          val normalizedData = "$it".lowercase()
          values().firstOrNull { value ->
            it == value || normalizedData == "$value".lowercase()
          }
        }
    }
}


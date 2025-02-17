/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.client.model

import org.openapitools.client.core.ApiModel

case class OrderExecutionReportAllOf (
  /* The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. */
  clientOrderIdFormatExchange: String,
  /* Unique identifier of the order assigned by the exchange or executing system. */
  exchangeOrderId: Option[String] = None,
  /* Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled` */
  amountOpen: BigDecimal,
  /* Total quantity filled. */
  amountFilled: BigDecimal,
  /* Calculated average price of all fills on this order. */
  avgPx: Option[BigDecimal] = None,
  status: OrdStatus,
  /* Timestamped history of order status changes. */
  statusHistory: Option[Seq[Seq[String]]] = None,
  /* Error message. */
  errorMessage: Option[String] = None,
  /* Relay fill information on working orders. */
  fills: Option[Seq[Fills]] = None
) extends ApiModel


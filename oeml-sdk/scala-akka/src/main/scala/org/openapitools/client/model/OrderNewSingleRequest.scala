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

import java.time.LocalDate
import org.openapitools.client.core.ApiModel

case class OrderNewSingleRequest (
  /* Exchange identifier used to identify the routing destination. */
  exchangeId: String,
  /* The unique identifier of the order assigned by the client. */
  clientOrderId: String,
  /* Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order. */
  symbolIdExchange: Option[String] = None,
  /* CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order. */
  symbolIdCoinapi: Option[String] = None,
  /* Order quantity. */
  amountOrder: BigDecimal,
  /* Order price. */
  price: BigDecimal,
  side: OrdSide,
  orderType: OrdType,
  timeInForce: TimeInForce,
  /* Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`. */
  expireTime: Option[LocalDate] = None,
  /* Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>  */
  execInst: Option[OrderNewSingleRequestEnums.Seq[ExecInst]] = None
) extends ApiModel

object OrderNewSingleRequestEnums {

  type Seq[ExecInst] = Seq[ExecInst].Value
  object Seq[ExecInst] extends Enumeration {
  }

}

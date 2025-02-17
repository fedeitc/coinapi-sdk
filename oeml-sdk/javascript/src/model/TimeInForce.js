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
 *
 */

import ApiClient from '../ApiClient';
/**
* Enum class TimeInForce.
* @enum {}
* @readonly
*/
export default class TimeInForce {
    
        /**
         * value: "GOOD_TILL_CANCEL"
         * @const
         */
        "GOOD_TILL_CANCEL" = "GOOD_TILL_CANCEL";

    
        /**
         * value: "GOOD_TILL_TIME_EXCHANGE"
         * @const
         */
        "GOOD_TILL_TIME_EXCHANGE" = "GOOD_TILL_TIME_EXCHANGE";

    
        /**
         * value: "GOOD_TILL_TIME_OMS"
         * @const
         */
        "GOOD_TILL_TIME_OMS" = "GOOD_TILL_TIME_OMS";

    
        /**
         * value: "FILL_OR_KILL"
         * @const
         */
        "FILL_OR_KILL" = "FILL_OR_KILL";

    
        /**
         * value: "IMMEDIATE_OR_CANCEL"
         * @const
         */
        "IMMEDIATE_OR_CANCEL" = "IMMEDIATE_OR_CANCEL";

    

    /**
    * Returns a <code>TimeInForce</code> enum value from a Javascript object name.
    * @param {Object} data The plain JavaScript object containing the name of the enum value.
    * @return {module:model/TimeInForce} The enum <code>TimeInForce</code> value.
    */
    static constructFromObject(object) {
        return object;
    }
}


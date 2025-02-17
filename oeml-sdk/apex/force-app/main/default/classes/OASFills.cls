/*
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href="https://postman.coinapi.io/" target="_blank">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:\n\n * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)\n * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)\n * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)\n
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

/**
 * OASFills
 */
public class OASFills implements OAS.MappedProperties {
    /**
     * Execution time.
     * @return r_time
     */
    public Date r_time { get; set; }

    /**
     * Execution price.
     * @return price
     */
    public Double price { get; set; }

    /**
     * Executed quantity.
     * @return amount
     */
    public Double amount { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'time' => 'r_time'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASFills getExample() {
        OASFills fills = new OASFills();
          fills.r_time = Date.getExample();
          fills.price = 10799.2;
          fills.amount = 0.002;
        return fills;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASFills) {           
            OASFills fills = (OASFills) obj;
            return this.r_time == fills.r_time
                && this.price == fills.price
                && this.amount == fills.amount;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (r_time == null ? 0 : System.hashCode(r_time));
        hashCode = (17 * hashCode) + (price == null ? 0 : System.hashCode(price));
        hashCode = (17 * hashCode) + (amount == null ? 0 : System.hashCode(amount));
        return hashCode;
    }
}


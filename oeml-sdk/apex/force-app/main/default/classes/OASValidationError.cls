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
 * OASValidationError
 */
public class OASValidationError {
    /**
     * Get type
     * @return type
     */
    public String type { get; set; }

    /**
     * Get title
     * @return title
     */
    public String title { get; set; }

    /**
     * Get status
     * @return status
     */
    public Double status { get; set; }

    /**
     * Get traceId
     * @return traceId
     */
    public String traceId { get; set; }

    /**
     * Get errors
     * @return errors
     */
    public String errors { get; set; }

    public static OASValidationError getExample() {
        OASValidationError validationError = new OASValidationError();
          validationError.type = 'https://tools.ietf.org/html/rfc7231#section-6.5.1';
          validationError.title = 'One or more validation errors occurred.';
          validationError.status = 400;
          validationError.traceId = 'd200e8b5-4271a5461ce5342f';
          validationError.errors = '';
        return validationError;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASValidationError) {           
            OASValidationError validationError = (OASValidationError) obj;
            return this.type == validationError.type
                && this.title == validationError.title
                && this.status == validationError.status
                && this.traceId == validationError.traceId
                && this.errors == validationError.errors;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (type == null ? 0 : System.hashCode(type));
        hashCode = (17 * hashCode) + (title == null ? 0 : System.hashCode(title));
        hashCode = (17 * hashCode) + (status == null ? 0 : System.hashCode(status));
        hashCode = (17 * hashCode) + (traceId == null ? 0 : System.hashCode(traceId));
        hashCode = (17 * hashCode) + (errors == null ? 0 : System.hashCode(errors));
        return hashCode;
    }
}


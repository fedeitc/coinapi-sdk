/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * Balance_data.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_Balance_data_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_Balance_data_H_


#include "ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  Balance_data
    : public ModelBase
{
public:
    Balance_data();
    virtual ~Balance_data();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Balance_data members

    /// <summary>
    /// Exchange currency code.
    /// </summary>
    utility::string_t getAssetIdExchange() const;
    bool assetIdExchangeIsSet() const;
    void unsetAsset_id_exchange();

    void setAssetIdExchange(const utility::string_t& value);

    /// <summary>
    /// CoinAPI currency code.
    /// </summary>
    utility::string_t getAssetIdCoinapi() const;
    bool assetIdCoinapiIsSet() const;
    void unsetAsset_id_coinapi();

    void setAssetIdCoinapi(const utility::string_t& value);

    /// <summary>
    /// Value of the current total currency balance on the exchange.
    /// </summary>
    double getBalance() const;
    bool balanceIsSet() const;
    void unsetBalance();

    void setBalance(double value);

    /// <summary>
    /// Value of the current available currency balance on the exchange that can be used as collateral.
    /// </summary>
    double getAvailable() const;
    bool availableIsSet() const;
    void unsetAvailable();

    void setAvailable(double value);

    /// <summary>
    /// Value of the current locked currency balance by the exchange.
    /// </summary>
    double getLocked() const;
    bool lockedIsSet() const;
    void unsetLocked();

    void setLocked(double value);

    /// <summary>
    /// Source of the last modification. 
    /// </summary>
    utility::string_t getLastUpdatedBy() const;
    bool lastUpdatedByIsSet() const;
    void unsetLast_updated_by();

    void setLastUpdatedBy(const utility::string_t& value);

    /// <summary>
    /// Current exchange rate to the USD for the single unit of the currency. 
    /// </summary>
    double getRateUsd() const;
    bool rateUsdIsSet() const;
    void unsetRate_usd();

    void setRateUsd(double value);

    /// <summary>
    /// Value of the current total traded.
    /// </summary>
    double getTraded() const;
    bool tradedIsSet() const;
    void unsetTraded();

    void setTraded(double value);


protected:
    utility::string_t m_Asset_id_exchange;
    bool m_Asset_id_exchangeIsSet;
    utility::string_t m_Asset_id_coinapi;
    bool m_Asset_id_coinapiIsSet;
    double m_Balance;
    bool m_BalanceIsSet;
    double m_Available;
    bool m_AvailableIsSet;
    double m_Locked;
    bool m_LockedIsSet;
    utility::string_t m_Last_updated_by;
    bool m_Last_updated_byIsSet;
    double m_Rate_usd;
    bool m_Rate_usdIsSet;
    double m_Traded;
    bool m_TradedIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_Balance_data_H_ */

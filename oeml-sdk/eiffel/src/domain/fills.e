note
 description:"[
		OEML - REST API
 		This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
  		The version of the OpenAPI document: v1
 	    Contact: support@coinapi.io

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class FILLS




feature --Access

    time: detachable DATE
      -- Execution time.
 	price: REAL_32
    	 -- Execution price.
 	amount: REAL_32
    	 -- Executed quantity.

feature -- Change Element

    set_time (a_name: like time)
        -- Set 'time' with 'a_name'.
      do
        time := a_name
      ensure
        time_set: time = a_name
      end

    set_price (a_name: like price)
        -- Set 'price' with 'a_name'.
      do
        price := a_name
      ensure
        price_set: price = a_name
      end

    set_amount (a_name: like amount)
        -- Set 'amount' with 'a_name'.
      do
        amount := a_name
      ensure
        amount_set: amount = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass FILLS%N")
        if attached time as l_time then
          Result.append ("%Ntime:")
          Result.append (l_time.out)
          Result.append ("%N")
        end
        if attached price as l_price then
          Result.append ("%Nprice:")
          Result.append (l_price.out)
          Result.append ("%N")
        end
        if attached amount as l_amount then
          Result.append ("%Namount:")
          Result.append (l_amount.out)
          Result.append ("%N")
        end
      end
end


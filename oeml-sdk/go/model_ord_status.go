/*
OEML - REST API

This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 

API version: v1
Contact: support@coinapi.io
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
	"fmt"
)

// OrdStatus Order statuses and the lifecycle are documented in the separate section: <a href=\"#oeml-order-lifecycle\">OEML / Starter Guide / Order Lifecycle</a> 
type OrdStatus string

// List of OrdStatus
const (
	RECEIVED OrdStatus = "RECEIVED"
	ROUTING OrdStatus = "ROUTING"
	ROUTED OrdStatus = "ROUTED"
	NEW OrdStatus = "NEW"
	PENDING_CANCEL OrdStatus = "PENDING_CANCEL"
	PARTIALLY_FILLED OrdStatus = "PARTIALLY_FILLED"
	FILLED OrdStatus = "FILLED"
	CANCELED OrdStatus = "CANCELED"
	REJECTED OrdStatus = "REJECTED"
)

// All allowed values of OrdStatus enum
var AllowedOrdStatusEnumValues = []OrdStatus{
	"RECEIVED",
	"ROUTING",
	"ROUTED",
	"NEW",
	"PENDING_CANCEL",
	"PARTIALLY_FILLED",
	"FILLED",
	"CANCELED",
	"REJECTED",
}

func (v *OrdStatus) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := OrdStatus(value)
	for _, existing := range AllowedOrdStatusEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid OrdStatus", value)
}

// NewOrdStatusFromValue returns a pointer to a valid OrdStatus
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewOrdStatusFromValue(v string) (*OrdStatus, error) {
	ev := OrdStatus(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for OrdStatus: valid values are %v", v, AllowedOrdStatusEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v OrdStatus) IsValid() bool {
	for _, existing := range AllowedOrdStatusEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to OrdStatus value
func (v OrdStatus) Ptr() *OrdStatus {
	return &v
}

type NullableOrdStatus struct {
	value *OrdStatus
	isSet bool
}

func (v NullableOrdStatus) Get() *OrdStatus {
	return v.value
}

func (v *NullableOrdStatus) Set(val *OrdStatus) {
	v.value = val
	v.isSet = true
}

func (v NullableOrdStatus) IsSet() bool {
	return v.isSet
}

func (v *NullableOrdStatus) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOrdStatus(val *OrdStatus) *NullableOrdStatus {
	return &NullableOrdStatus{value: val, isSet: true}
}

func (v NullableOrdStatus) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOrdStatus) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


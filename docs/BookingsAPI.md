# BookingsAPI

All URIs are relative to *https://localhost:5001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bookingsCheckIfDateIsAvailable**](BookingsAPI.md#bookingscheckifdateisavailable) | **PUT** /api/v2.0/Bookings/Query/Date | 
[**bookingsCreateBooking**](BookingsAPI.md#bookingscreatebooking) | **POST** /api/v2.0/Bookings | 
[**bookingsGetBookedDates**](BookingsAPI.md#bookingsgetbookeddates) | **PUT** /api/v2.0/Bookings/Query/BookedDates | 
[**bookingsGetPaymentIntent**](BookingsAPI.md#bookingsgetpaymentintent) | **GET** /api/v2.0/Bookings/Payments/{id} | 
[**bookingsGetUserBookings**](BookingsAPI.md#bookingsgetuserbookings) | **GET** /api/v2.0/Bookings | 
[**bookingsPayRestOfBookingAmount**](BookingsAPI.md#bookingspayrestofbookingamount) | **PUT** /api/v2.0/Bookings/{bookingId}/Actions/Complete | 
[**bookingsUpdateBooking**](BookingsAPI.md#bookingsupdatebooking) | **PUT** /api/v2.0/Bookings/{bookingId} | 


# **bookingsCheckIfDateIsAvailable**
```swift
    open class func bookingsCheckIfDateIsAvailable(start: Date? = nil, end: Date? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let start = Date() // Date |  (optional)
let end = Date() // Date |  (optional)

BookingsAPI.bookingsCheckIfDateIsAvailable(start: start, end: end) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Date** |  | [optional] 
 **end** | **Date** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[JWT token](../README.md#JWT token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookingsCreateBooking**
```swift
    open class func bookingsCreateBooking(userBookingModel: UserBookingModel, completion: @escaping (_ data: UserBookingResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userBookingModel = UserBookingModel(start: Date(), end: Date(), couponCode: "couponCode_example", payAmount: 123, creditCard: UserBookingModel_creditCard(number: "number_example", expMonth: 123, expYear: 123, cvc: "cvc_example")) // UserBookingModel | 

BookingsAPI.bookingsCreateBooking(userBookingModel: userBookingModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userBookingModel** | [**UserBookingModel**](UserBookingModel.md) |  | 

### Return type

[**UserBookingResponse**](UserBookingResponse.md)

### Authorization

[JWT token](../README.md#JWT token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookingsGetBookedDates**
```swift
    open class func bookingsGetBookedDates(completion: @escaping (_ data: UserBookedDates?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


BookingsAPI.bookingsGetBookedDates() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserBookedDates**](UserBookedDates.md)

### Authorization

[JWT token](../README.md#JWT token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookingsGetPaymentIntent**
```swift
    open class func bookingsGetPaymentIntent(id: String, completion: @escaping (_ data: ShinyFlakePaymentIntentLog?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

BookingsAPI.bookingsGetPaymentIntent(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

[**ShinyFlakePaymentIntentLog**](ShinyFlakePaymentIntentLog.md)

### Authorization

[JWT token](../README.md#JWT token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookingsGetUserBookings**
```swift
    open class func bookingsGetUserBookings(completion: @escaping (_ data: [BookingLightModel]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


BookingsAPI.bookingsGetUserBookings() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[BookingLightModel]**](BookingLightModel.md)

### Authorization

[JWT token](../README.md#JWT token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookingsPayRestOfBookingAmount**
```swift
    open class func bookingsPayRestOfBookingAmount(bookingId: String, shinyFlakeStripeCardRequest: ShinyFlakeStripeCardRequest, completion: @escaping (_ data: UserBookingResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let bookingId = "bookingId_example" // String | 
let shinyFlakeStripeCardRequest = ShinyFlakeStripeCardRequest(number: "number_example", expMonth: 123, expYear: 123, cvc: "cvc_example") // ShinyFlakeStripeCardRequest | 

BookingsAPI.bookingsPayRestOfBookingAmount(bookingId: bookingId, shinyFlakeStripeCardRequest: shinyFlakeStripeCardRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **String** |  | 
 **shinyFlakeStripeCardRequest** | [**ShinyFlakeStripeCardRequest**](ShinyFlakeStripeCardRequest.md) |  | 

### Return type

[**UserBookingResponse**](UserBookingResponse.md)

### Authorization

[JWT token](../README.md#JWT token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookingsUpdateBooking**
```swift
    open class func bookingsUpdateBooking(bookingId: String, paymentIntentId: String? = nil, completion: @escaping (_ data: UserBookingResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let bookingId = "bookingId_example" // String | 
let paymentIntentId = "paymentIntentId_example" // String |  (optional)

BookingsAPI.bookingsUpdateBooking(bookingId: bookingId, paymentIntentId: paymentIntentId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **String** |  | 
 **paymentIntentId** | **String** |  | [optional] 

### Return type

[**UserBookingResponse**](UserBookingResponse.md)

### Authorization

[JWT token](../README.md#JWT token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


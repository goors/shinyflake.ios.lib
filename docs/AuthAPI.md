# AuthAPI

All URIs are relative to *https://localhost:5001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authAuthenticate**](AuthAPI.md#authauthenticate) | **POST** /api/v2.0/Auth/Authentication | 
[**authCheckIfEmailExist**](AuthAPI.md#authcheckifemailexist) | **POST** /api/v2.0/Auth/EmailCheck | 
[**authRegister**](AuthAPI.md#authregister) | **POST** /api/v2.0/Auth/Registration | 


# **authAuthenticate**
```swift
    open class func authAuthenticate(userOtpCredential: UserOtpCredential, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userOtpCredential = UserOtpCredential(persistent: false, email: "email_example", password: "password_example") // UserOtpCredential | 

AuthAPI.authAuthenticate(userOtpCredential: userOtpCredential) { (response, error) in
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
 **userOtpCredential** | [**UserOtpCredential**](UserOtpCredential.md) |  | 

### Return type

**String**

### Authorization

[JWT token](../README.md#JWT token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authCheckIfEmailExist**
```swift
    open class func authCheckIfEmailExist(body: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "body_example" // String | 

AuthAPI.authCheckIfEmailExist(body: body) { (response, error) in
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
 **body** | **String** |  | 

### Return type

**String**

### Authorization

[JWT token](../README.md#JWT token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authRegister**
```swift
    open class func authRegister(userRegistrationModel: UserRegistrationModel, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userRegistrationModel = UserRegistrationModel(id: "id_example", createdAt: Date(), updatedAt: Date(), email: "email_example", firstName: "firstName_example", lastname: "lastname_example", emailConfirmed: false, hasStripeCards: false, hasStripeProfile: false, stripeId: "stripeId_example", title: "title_example", password: "password_example") // UserRegistrationModel | 

AuthAPI.authRegister(userRegistrationModel: userRegistrationModel) { (response, error) in
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
 **userRegistrationModel** | [**UserRegistrationModel**](UserRegistrationModel.md) |  | 

### Return type

**String**

### Authorization

[JWT token](../README.md#JWT token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


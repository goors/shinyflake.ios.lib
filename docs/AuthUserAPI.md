# AuthUserAPI

All URIs are relative to *https://localhost:5001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authUserGetContext**](AuthUserAPI.md#authusergetcontext) | **GET** /api/v2.0/AuthUser/Context | 
[**authUserGetProfile**](AuthUserAPI.md#authusergetprofile) | **GET** /api/v2.0/AuthUser/Profile | 


# **authUserGetContext**
```swift
    open class func authUserGetContext(completion: @escaping (_ data: UserContextModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


AuthUserAPI.authUserGetContext() { (response, error) in
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

[**UserContextModel**](UserContextModel.md)

### Authorization

[JWT token](../README.md#JWT token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authUserGetProfile**
```swift
    open class func authUserGetProfile(completion: @escaping (_ data: UserProfileModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


AuthUserAPI.authUserGetProfile() { (response, error) in
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

[**UserProfileModel**](UserProfileModel.md)

### Authorization

[JWT token](../README.md#JWT token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


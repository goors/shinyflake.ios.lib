# UsersAPI

All URIs are relative to *https://localhost:5001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersCreate**](UsersAPI.md#userscreate) | **POST** /api/v2.0/Users | 


# **usersCreate**
```swift
    open class func usersCreate(userModel: UserModel, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userModel = UserModel(id: "id_example", createdAt: Date(), updatedAt: Date(), email: "email_example", firstName: "firstName_example", lastname: "lastname_example", emailConfirmed: false, hasStripeCards: false, hasStripeProfile: false, stripeId: "stripeId_example", title: "title_example", role: UserRole(), secret: "secret_example", password: "password_example") // UserModel | 

UsersAPI.usersCreate(userModel: userModel) { (response, error) in
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
 **userModel** | [**UserModel**](UserModel.md) |  | 

### Return type

**String**

### Authorization

[JWT token](../README.md#JWT token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


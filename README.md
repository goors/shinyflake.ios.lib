# Swift5 API client for OpenAPIClient

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 1.0.0
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://localhost:5001*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthAPI* | [**authAuthenticate**](docs/AuthAPI.md#authauthenticate) | **POST** /api/v2.0/Auth/Authentication | 
*AuthAPI* | [**authCheckIfEmailExist**](docs/AuthAPI.md#authcheckifemailexist) | **POST** /api/v2.0/Auth/EmailCheck | 
*AuthAPI* | [**authRegister**](docs/AuthAPI.md#authregister) | **POST** /api/v2.0/Auth/Registration | 
*AuthUserAPI* | [**authUserGetContext**](docs/AuthUserAPI.md#authusergetcontext) | **GET** /api/v2.0/AuthUser/Context | 
*AuthUserAPI* | [**authUserGetProfile**](docs/AuthUserAPI.md#authusergetprofile) | **GET** /api/v2.0/AuthUser/Profile | 
*BookingsAPI* | [**bookingsCheckIfDateIsAvailable**](docs/BookingsAPI.md#bookingscheckifdateisavailable) | **PUT** /api/v2.0/Bookings/Query/Date | 
*BookingsAPI* | [**bookingsCreateBooking**](docs/BookingsAPI.md#bookingscreatebooking) | **POST** /api/v2.0/Bookings | 
*BookingsAPI* | [**bookingsGetBookedDates**](docs/BookingsAPI.md#bookingsgetbookeddates) | **PUT** /api/v2.0/Bookings/Query/BookedDates | 
*BookingsAPI* | [**bookingsGetPaymentIntent**](docs/BookingsAPI.md#bookingsgetpaymentintent) | **GET** /api/v2.0/Bookings/Payments/{id} | 
*BookingsAPI* | [**bookingsGetUserBookings**](docs/BookingsAPI.md#bookingsgetuserbookings) | **GET** /api/v2.0/Bookings | 
*BookingsAPI* | [**bookingsPayRestOfBookingAmount**](docs/BookingsAPI.md#bookingspayrestofbookingamount) | **PUT** /api/v2.0/Bookings/{bookingId}/Actions/Complete | 
*BookingsAPI* | [**bookingsUpdateBooking**](docs/BookingsAPI.md#bookingsupdatebooking) | **PUT** /api/v2.0/Bookings/{bookingId} | 
*UsersAPI* | [**usersCreate**](docs/UsersAPI.md#userscreate) | **POST** /api/v2.0/Users | 


## Documentation For Models

 - [BookingLightModel](docs/BookingLightModel.md)
 - [EntityBaseModel](docs/EntityBaseModel.md)
 - [EntityBaseNestedModel](docs/EntityBaseNestedModel.md)
 - [ShinyFlakeChargeLog](docs/ShinyFlakeChargeLog.md)
 - [ShinyFlakePaymentIntentLog](docs/ShinyFlakePaymentIntentLog.md)
 - [ShinyFlakeStripeCardRequest](docs/ShinyFlakeStripeCardRequest.md)
 - [UserAccessInfo](docs/UserAccessInfo.md)
 - [UserAccessInfoGlobalPermissions](docs/UserAccessInfoGlobalPermissions.md)
 - [UserBookedDates](docs/UserBookedDates.md)
 - [UserBookingModel](docs/UserBookingModel.md)
 - [UserBookingModelCreditCard](docs/UserBookingModelCreditCard.md)
 - [UserBookingResponse](docs/UserBookingResponse.md)
 - [UserContextModel](docs/UserContextModel.md)
 - [UserContextModelAccess](docs/UserContextModelAccess.md)
 - [UserContextModelIdentity](docs/UserContextModelIdentity.md)
 - [UserCredential](docs/UserCredential.md)
 - [UserEntityPermissions](docs/UserEntityPermissions.md)
 - [UserGlobalPermissions](docs/UserGlobalPermissions.md)
 - [UserGlobalPermissionsUsers](docs/UserGlobalPermissionsUsers.md)
 - [UserIdentity](docs/UserIdentity.md)
 - [UserIdentityAllOf](docs/UserIdentityAllOf.md)
 - [UserModel](docs/UserModel.md)
 - [UserModelAllOf](docs/UserModelAllOf.md)
 - [UserOtpCredential](docs/UserOtpCredential.md)
 - [UserOtpCredentialAllOf](docs/UserOtpCredentialAllOf.md)
 - [UserProfileModel](docs/UserProfileModel.md)
 - [UserProfileModelAllOf](docs/UserProfileModelAllOf.md)
 - [UserRegistrationModel](docs/UserRegistrationModel.md)
 - [UserRegistrationModelAllOf](docs/UserRegistrationModelAllOf.md)
 - [UserRole](docs/UserRole.md)
 - [ValueTupleOfDateTimeAndDateTime](docs/ValueTupleOfDateTimeAndDateTime.md)


## Documentation For Authorization


## JWT token

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author




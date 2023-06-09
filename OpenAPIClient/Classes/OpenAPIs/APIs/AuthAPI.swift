//
// AuthAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AuthAPI {

    /**

     - parameter userOtpCredential: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func authAuthenticate(userOtpCredential: UserOtpCredential, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: String?, _ error: Error?) -> Void)) -> RequestTask {
        return authAuthenticateWithRequestBuilder(userOtpCredential: userOtpCredential).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /api/v2.0/Auth/Authentication
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT token
     - parameter userOtpCredential: (body)  
     - returns: RequestBuilder<String> 
     */
    open class func authAuthenticateWithRequestBuilder(userOtpCredential: UserOtpCredential) -> RequestBuilder<String> {
        let localVariablePath = "/api/v2.0/Auth/Authentication"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userOtpCredential)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter body: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func authCheckIfEmailExist(body: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: String?, _ error: Error?) -> Void)) -> RequestTask {
        return authCheckIfEmailExistWithRequestBuilder(body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /api/v2.0/Auth/EmailCheck
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT token
     - parameter body: (body)  
     - returns: RequestBuilder<String> 
     */
    open class func authCheckIfEmailExistWithRequestBuilder(body: String) -> RequestBuilder<String> {
        let localVariablePath = "/api/v2.0/Auth/EmailCheck"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter userRegistrationModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func authRegister(userRegistrationModel: UserRegistrationModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: String?, _ error: Error?) -> Void)) -> RequestTask {
        return authRegisterWithRequestBuilder(userRegistrationModel: userRegistrationModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /api/v2.0/Auth/Registration
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT token
     - parameter userRegistrationModel: (body)  
     - returns: RequestBuilder<String> 
     */
    open class func authRegisterWithRequestBuilder(userRegistrationModel: UserRegistrationModel) -> RequestBuilder<String> {
        let localVariablePath = "/api/v2.0/Auth/Registration"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userRegistrationModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
    
    
    
    /**

     - parameter userRegistrationModel: (body)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func addDevice(deviceModel: UserUpdateDeviceId, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: String?, _ error: Error?) -> Void)) -> RequestTask {
        return addDeviceWithRequestBuilder(deviceModel: deviceModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /api/v2.0/Auth/Device
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT token
     - parameter userRegistrationModel: (body)
     - returns: RequestBuilder<String>
     */
    open class func addDeviceWithRequestBuilder(deviceModel: UserUpdateDeviceId) -> RequestBuilder<String> {
        let localVariablePath = "/api/v2.0/Auth/Device"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deviceModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
    
    
    
    /**

     - parameter body: (body)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPhotoByEmail(body: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: String?, _ error: Error?) -> Void)) -> RequestTask {
        return getPhotoByEmailWithRequestBuilder(body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /api/v2.0/Auth/EmailCheck
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT token
     - parameter body: (body)
     - returns: RequestBuilder<String>
     */
    open class func getPhotoByEmailWithRequestBuilder(body: String) -> RequestBuilder<String> {
        let localVariablePath = "/api/v2.0/Auth/Photo"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
    
    open class func authRegisterV2(model: UserRegistrationModel, completion: @escaping (Data?, URLResponse?, Any?) -> Void) {
        
        authRegisterV2WithRequestBuilder(model: model, completionHandler: completion)
            
    }

       
    open class func authRegisterV2WithRequestBuilder(model: UserRegistrationModel, completionHandler: @escaping (Data?, URLResponse?, Any?) -> Void) {
        
            let localVariablePath = "/api/v2.0/Auth/RegistrationV2"
            let request = MultipartFormDataRequest(url: URL(string: OpenAPIClientAPI.basePath + localVariablePath)!)
        
            request.addDataField(fieldName: "Photo", fileName: "profile.jpeg", data: model.photo!, mimeType: "image/jpeg")
            request.addTextField(named: "Password", value: model.password)
            request.addTextField(named: "UseService", value: String(model.service.rawValue))
            request.addTextField(named: "Email", value: model.email)
            request.addTextField(named: "FirstName", value: model.firstName!)
            request.addTextField(named: "Lastname", value: model.lastname!)
            request.addTextField(named: "DeviceId", value: model.deviceId!)
        request.addTextField(named: "DeviceType", value: String(model.deviceType.rawValue))
            request.addTextField(named: "Title", value: model.title!)
        
            URLSession.shared.dataTask(with: request, completionHandler: completionHandler).resume()
            
    }
    
    
    /**

         - parameter userUpdateDeviceId: (body)
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the data and the error objects
         */
        @discardableResult
        open class func addDevice(userUpdateDeviceId: UserUpdateDeviceId, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Bool?, _ error: Error?) -> Void)) -> RequestTask {
            return addDeviceWithRequestBuilder(userUpdateDeviceId: userUpdateDeviceId).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    completion(response.body, nil)
                case let .failure(error):
                    completion(nil, error)
                }
            }
        }

        /**
         - POST /api/v2.0/Auth/Device
         - API Key:
           - type: apiKey Authorization (HEADER)
           - name: JWT token
         - parameter userUpdateDeviceId: (body)
         - returns: RequestBuilder<Bool>
         */
        open class func addDeviceWithRequestBuilder(userUpdateDeviceId: UserUpdateDeviceId) -> RequestBuilder<Bool> {
            let localVariablePath = "/api/v2.0/Auth/Device"
            let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userUpdateDeviceId)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                :
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Bool>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }
    
    
    /**

         - parameter body: (body)
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the data and the error objects
         */
        @discardableResult
        open class func getUserPhotoByEmail(body: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: String?, _ error: Error?) -> Void)) -> RequestTask {
            return authGetUserPhotoByEmailWithRequestBuilder(body: body).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    completion(response.body, nil)
                case let .failure(error):
                    completion(nil, error)
                }
            }
        }

        /**
         - POST /api/v2.0/Auth/Photo
         - API Key:
           - type: apiKey Authorization (HEADER)
           - name: JWT token
         - parameter body: (body)
         - returns: RequestBuilder<String>
         */
        open class func authGetUserPhotoByEmailWithRequestBuilder(body: String) -> RequestBuilder<String> {
            let localVariablePath = "/api/v2.0/Auth/Photo"
            let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                :
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<String>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }
}

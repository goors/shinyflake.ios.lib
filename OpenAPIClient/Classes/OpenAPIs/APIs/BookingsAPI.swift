//
// BookingsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BookingsAPI {

    /**

     - parameter start: (query)  (optional)
     - parameter end: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func bookingsCheckIfDateIsAvailable(start: Date? = nil, end: Date? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Bool, _ error: Error?) -> Void)) -> RequestTask {
    // open class func bookingsCheckIfDateIsAvailable(start: Date? = nil, end: Date? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Bool, _ error: Error?) -> Void)) -> RequestTask {
        return bookingsCheckIfDateIsAvailableWithRequestBuilder(start: start, end: end).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(false, error)
            }
        }
    }

    /**
     - PUT /api/v2.0/Bookings/Query/Date
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT token
     - parameter start: (query)  (optional)
     - parameter end: (query)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func bookingsCheckIfDateIsAvailableWithRequestBuilder(start: Date? = nil, end: Date? = nil) -> RequestBuilder<Bool> {
        let localVariablePath = "/api/v2.0/Bookings/Query/Date"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "end": (wrappedValue: end?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]
        
        
        
        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        var d = localVariableRequestBuilder
            .init(
                method: "PUT",
                URLString: (localVariableUrlComponents?.string ?? localVariableURLString),
                parameters: localVariableParameters,
                headers: localVariableHeaderParameters,
                requiresAuthentication: true
            )
        
        return d;
        
        
        
        
        

        // let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

       //  let localVariableRequestBuilder: RequestBuilder<Bool>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        // return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter userBookingModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func bookingsCreateBooking(userBookingModel: UserBookingModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UserBookingResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return bookingsCreateBookingWithRequestBuilder(userBookingModel: userBookingModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /api/v2.0/Bookings
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT token
     - parameter userBookingModel: (body)  
     - returns: RequestBuilder<UserBookingResponse> 
     */
    open class func bookingsCreateBookingWithRequestBuilder(userBookingModel: UserBookingModel) -> RequestBuilder<UserBookingResponse> {
        let localVariablePath = "/api/v2.0/Bookings"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userBookingModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserBookingResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func bookingsGetBookedDates(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UserBookedDates?, _ error: Error?) -> Void)) -> RequestTask {
        return bookingsGetBookedDatesWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PUT /api/v2.0/Bookings/Query/BookedDates
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT token
     - returns: RequestBuilder<UserBookedDates> 
     */
    open class func bookingsGetBookedDatesWithRequestBuilder() -> RequestBuilder<UserBookedDates> {
        let localVariablePath = "/api/v2.0/Bookings/Query/BookedDates"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserBookedDates>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func bookingsGetPaymentIntent(id: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ShinyFlakePaymentIntentLog?, _ error: Error?) -> Void)) -> RequestTask {
        return bookingsGetPaymentIntentWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /api/v2.0/Bookings/Payments/{id}
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT token
     - parameter id: (path)  
     - returns: RequestBuilder<ShinyFlakePaymentIntentLog> 
     */
    open class func bookingsGetPaymentIntentWithRequestBuilder(id: String) -> RequestBuilder<ShinyFlakePaymentIntentLog> {
        var localVariablePath = "/api/v2.0/Bookings/Payments/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ShinyFlakePaymentIntentLog>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func bookingsGetUserBookings(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [BookingLightModel]?, _ error: Error?) -> Void)) -> RequestTask {
        return bookingsGetUserBookingsWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /api/v2.0/Bookings
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT token
     - returns: RequestBuilder<[BookingLightModel]> 
     */
    open class func bookingsGetUserBookingsWithRequestBuilder() -> RequestBuilder<[BookingLightModel]> {
        let localVariablePath = "/api/v2.0/Bookings"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[BookingLightModel]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter bookingId: (path)  
     - parameter shinyFlakeStripeCardRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func bookingsPayRestOfBookingAmount(bookingId: String, shinyFlakeStripeCardRequest: ShinyFlakeStripeCardRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UserBookingResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return bookingsPayRestOfBookingAmountWithRequestBuilder(bookingId: bookingId, shinyFlakeStripeCardRequest: shinyFlakeStripeCardRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PUT /api/v2.0/Bookings/{bookingId}/Actions/Complete
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT token
     - parameter bookingId: (path)  
     - parameter shinyFlakeStripeCardRequest: (body)  
     - returns: RequestBuilder<UserBookingResponse> 
     */
    open class func bookingsPayRestOfBookingAmountWithRequestBuilder(bookingId: String, shinyFlakeStripeCardRequest: ShinyFlakeStripeCardRequest) -> RequestBuilder<UserBookingResponse> {
        var localVariablePath = "/api/v2.0/Bookings/{bookingId}/Actions/Complete"
        let bookingIdPreEscape = "\(APIHelper.mapValueToPathItem(bookingId))"
        let bookingIdPostEscape = bookingIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{bookingId}", with: bookingIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: shinyFlakeStripeCardRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserBookingResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter bookingId: (path)  
     - parameter paymentIntentId: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func bookingsUpdateBooking(bookingId: String, paymentIntentId: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UserBookingResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return bookingsUpdateBookingWithRequestBuilder(bookingId: bookingId, paymentIntentId: paymentIntentId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - PUT /api/v2.0/Bookings/{bookingId}
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: JWT token
     - parameter bookingId: (path)  
     - parameter paymentIntentId: (query)  (optional)
     - returns: RequestBuilder<UserBookingResponse> 
     */
    open class func bookingsUpdateBookingWithRequestBuilder(bookingId: String, paymentIntentId: String? = nil) -> RequestBuilder<UserBookingResponse> {
        var localVariablePath = "/api/v2.0/Bookings/{bookingId}"
        let bookingIdPreEscape = "\(APIHelper.mapValueToPathItem(bookingId))"
        let bookingIdPostEscape = bookingIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{bookingId}", with: bookingIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "paymentIntentId": (wrappedValue: paymentIntentId?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserBookingResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}

//
// UserProfileModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ActivityRecord: Codable, JSONEncodable, Hashable {

    
    public var id: UUID
    public var lng: Double
    public var lat: Double
    public var distance: Double?
    public var poi: String?
    public var elevation: Double?
    public var dateTime: Date?
    
    
    public init(
        id: UUID,
        lng: Double,
        lat: Double,
        distance: Double? = nil,
        poi: String? = nil,
        elevation: Double? = nil,
        dateTime: Date? = nil
        
    ) {
        self.id = id
        self.lng = lng
        self.lat = lat
        self.distance = distance
        self.poi = poi
        self.elevation = elevation
        self.dateTime = dateTime
        
        
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case lng
        case lat
        case distance
        case poi
        case elevation
        case dateTime
        
        
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(lng, forKey: .lng)
        try container.encodeIfPresent(lat, forKey: .lat)
        try container.encodeIfPresent(distance, forKey: .distance)
        try container.encodeIfPresent(poi, forKey: .poi)
        try container.encodeIfPresent(elevation, forKey: .elevation)
        try container.encodeIfPresent(dateTime, forKey: .dateTime)
        
        
    }
}

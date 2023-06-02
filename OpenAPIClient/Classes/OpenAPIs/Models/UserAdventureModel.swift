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

public struct UserAdventureModel: Codable, JSONEncodable, Hashable {

    
    public var id: UUID
    public var createdAt: Date
    public var name: String?
    public var subTitle: String?
    public var category: String?
    public var text: String?
    public var coverImage: Data?
    public var photos: [Data]?
    public var data: [UserAdventureModelData]
    public var level: UserAdventureLevel?
    
    public init(
        id: UUID,
        createdAt: Date,
        name: String? = nil,
        subTitle: String? = nil,
        category: String? = nil,
        coverImage: Data? = nil,
        text: String? = nil,
        photos: [Data]? = nil,
        level: UserAdventureLevel? = nil,
        data: [UserAdventureModelData]
    ) {
        self.id = id
        self.createdAt = createdAt
        self.name = name
        self.subTitle = name
        self.category = category
        self.text = text
        self.coverImage = coverImage
        self.photos = photos
        self.data = data
        self.level = level
        
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case createdAt
        case name
        case subTitle
        case category
        case text
        case coverImage
        case photos
        case data
        case level
        
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(subTitle, forKey: .subTitle)
        try container.encodeIfPresent(category, forKey: .category)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(coverImage, forKey: .coverImage)
        try container.encodeIfPresent(photos, forKey: .photos)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(level, forKey: .level)
        
    }
}

public struct UserAdventureModelData: Codable, JSONEncodable, Hashable {
    
    public var id: UUID
    public var createdAt: Date
    public var note: String?
    public var lng: Double
    public var lat: Double
    public var speed: Double?
    public var altitude: Double?
    
    
    
    public init(
        id: UUID,
        createdAt: Date,
        note: String? = nil,
        lng: Double,
        lat: Double,
        speed: Double? = nil,
        altitude: Double? = nil
        
    ) {
        self.id = id
        self.createdAt = createdAt
        self.note = note
        self.lng = lng
        self.lat = lat
        self.speed = speed
        self.altitude = altitude
        
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case createdAt
        case note
        case lng
        case lat
        case speed
        case altitude
        
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(note, forKey: .note)
        try container.encodeIfPresent(lng, forKey: .lng)
        try container.encodeIfPresent(lat, forKey: .lat)
        try container.encodeIfPresent(speed, forKey: .speed)
        try container.encodeIfPresent(altitude, forKey: .altitude)
        
        
    }
}


//
// UserRole.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public enum UserAdventureLevel: Int, Codable, CaseIterable {
    case Easy = 0
    case Moderate = 1
    case Difficult = 2
}


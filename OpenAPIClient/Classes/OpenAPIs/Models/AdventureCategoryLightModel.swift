//
// BlogPostLightModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AdventureCategoryLightModel: Codable, JSONEncodable, Hashable {

    public var id: String
    public var createdAt: Date
    public var updatedAt: Date?
    public var title: String
    public var icon: String
    

    public init(id: String, createdAt: Date, updatedAt: Date? = nil, title: String, icon: String) {
        self.id = id
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.title = title
        self.icon = icon
        
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case createdAt
        case updatedAt
        case title
        case icon
        
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(icon, forKey: .icon)
        
    }
}

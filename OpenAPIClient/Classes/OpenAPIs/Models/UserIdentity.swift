//
// UserIdentity.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserIdentity: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var firstName: String?
    public var lastName: String?

    public init(id: String? = nil, firstName: String? = nil, lastName: String? = nil) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case firstName
        case lastName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
    }
}


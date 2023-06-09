//
// UserGlobalPermissions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserGlobalPermissions: Codable, JSONEncodable, Hashable {

    public var users: UserGlobalPermissionsUsers?

    public init(users: UserGlobalPermissionsUsers? = nil) {
        self.users = users
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case users
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(users, forKey: .users)
    }
}


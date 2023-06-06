//
// EntitySearchResultOfUserProfileActivityAllOfEntityCounts.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum EntitySearchResultOfUserProfileActivityAllOfEntityCounts: Codable, JSONEncodable, Hashable {
    case typeEntityCounts(EntityCounts)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeEntityCounts(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(EntityCounts.self) {
            self = .typeEntityCounts(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of EntitySearchResultOfUserProfileActivityAllOfEntityCounts"))
        }
    }
}

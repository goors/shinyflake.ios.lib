//
// ValueTupleOfDateTimeAndDateTime.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ValueTupleOfDateTimeAndDateTime: Codable, JSONEncodable, Hashable {

    public var item1: Date?
    public var item2: Date?

    public init(item1: Date? = nil, item2: Date? = nil) {
        self.item1 = item1
        self.item2 = item2
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case item1
        case item2
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(item1, forKey: .item1)
        try container.encodeIfPresent(item2, forKey: .item2)
    }
}


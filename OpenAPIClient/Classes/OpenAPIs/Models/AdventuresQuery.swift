//
// BlogQuery.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AdventuresQuery: Codable, JSONEncodable, Hashable {

    public var page: Int
    public var pageSize: Int
    public var recommended: Bool?

    public init(page: Int, pageSize: Int, recommended: Bool? = nil) {
        self.page = page
        self.pageSize = pageSize
        self.recommended = recommended
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case page
        case pageSize
        case recommended
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(page, forKey: .page)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(recommended, forKey: .recommended)
    }
}


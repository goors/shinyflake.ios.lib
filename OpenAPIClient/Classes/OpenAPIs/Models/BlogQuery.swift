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

public struct BlogQuery: Codable, JSONEncodable, Hashable {

    public var page: Int
    public var pageSize: Int

    public init(page: Int, pageSize: Int) {
        self.page = page
        self.pageSize = pageSize
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case page
        case pageSize
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(page, forKey: .page)
        try container.encode(pageSize, forKey: .pageSize)
    }
}


//
// ShinyFlakePaymentIntentLog.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ShinyFlakePaymentIntentLog: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var charges: [ShinyFlakeChargeLog]?

    public init(id: String? = nil, charges: [ShinyFlakeChargeLog]? = nil) {
        self.id = id
        self.charges = charges
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case charges
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(charges, forKey: .charges)
    }
}


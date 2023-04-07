//
// UserOtpCredentialAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserOtpCredentialAllOf: Codable, JSONEncodable, Hashable {

    static let emailRule = StringRule(minLength: 0, maxLength: 100, pattern: nil)
    static let passwordRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var email: String
    public var password: String

    public init(email: String, password: String) {
        self.email = email
        self.password = password
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case password
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(email, forKey: .email)
        try container.encode(password, forKey: .password)
    }
}

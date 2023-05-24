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

public struct AdventureLightModel: Codable, JSONEncodable, Hashable {

    public var id: String
    public var createdAt: Date
    public var updatedAt: Date?
    public var title: String
    public var subTitle: String
    public var trekk: String?
    public var text: String?
    public var coverPhoto: String
    public var photos: [BlogPostPhoto]?
    public var videos: [String]?
    public var altitudes: [Double]?
    public var commentsAllowed: Bool

    public init(id: String, createdAt: Date, updatedAt: Date? = nil, title: String, subTitle: String, text: String? = nil, coverPhoto: String, photos: [BlogPostPhoto]? = nil, videos: [String]? = nil, trekk: String?, altitudes: [Double]?, commentsAllowed: Bool) {
        self.id = id
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.title = title
        self.subTitle = subTitle
        self.text = text
        self.coverPhoto = coverPhoto
        self.photos = photos
        self.videos = videos
        self.trekk = trekk
        self.commentsAllowed = commentsAllowed
        self.altitudes = altitudes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case createdAt
        case updatedAt
        case title
        case subTitle
        case text
        case coverPhoto
        case photos
        case videos
        case trekk
        case commentsAllowed
        case altitudes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(subTitle, forKey: .subTitle)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(coverPhoto, forKey: .coverPhoto)
        try container.encodeIfPresent(photos, forKey: .photos)
        try container.encodeIfPresent(videos, forKey: .videos)
        try container.encodeIfPresent(trekk, forKey: .trekk)
        try container.encodeIfPresent(commentsAllowed, forKey: .commentsAllowed)
        try container.encodeIfPresent(altitudes, forKey: .altitudes)
    }
}


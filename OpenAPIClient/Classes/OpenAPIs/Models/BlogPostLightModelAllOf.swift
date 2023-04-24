//
// BlogPostLightModelAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BlogPostLightModelAllOf: Codable, JSONEncodable, Hashable {

    public var title: String?
    public var subTitle: String?
    public var text: String?
    public var coverPhoto: String?
    public var photos: [BlogPostPhoto]?
    public var videos: [String]?
    public var location: BlogPostLightModelAllOfLocation?
    public var commentsAllowed: Bool?

    public init(title: String? = nil, subTitle: String? = nil, text: String? = nil, coverPhoto: String? = nil, photos: [BlogPostPhoto]? = nil, videos: [String]? = nil, location: BlogPostLightModelAllOfLocation? = nil, commentsAllowed: Bool? = nil) {
        self.title = title
        self.subTitle = subTitle
        self.text = text
        self.coverPhoto = coverPhoto
        self.photos = photos
        self.videos = videos
        self.location = location
        self.commentsAllowed = commentsAllowed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case subTitle
        case text
        case coverPhoto
        case photos
        case videos
        case location
        case commentsAllowed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(subTitle, forKey: .subTitle)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(coverPhoto, forKey: .coverPhoto)
        try container.encodeIfPresent(photos, forKey: .photos)
        try container.encodeIfPresent(videos, forKey: .videos)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(commentsAllowed, forKey: .commentsAllowed)
    }
}

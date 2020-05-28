//
//  NewsModel.swift
//  Project Covid 19
//
//  Created by Adilzhan Akhayev on 4/19/20.
//  Copyright © 2020 Adilzhan Akhayev. All rights reserved.
//

import Foundation

struct Headline: Codable {
    var articles: [Article]
}

struct Article: Codable {
    var title: String?
    var description: String?
    var content: String?
    var url: URL?
    var urlToImage: URL?
    var publishedAt: String?
    var source: Source?
}

struct Source: Codable {
    var name: String?
}

extension Article {
    var descriptionOrContent: String? {
        return description ?? content
    }
}


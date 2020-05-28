//
//  DataModel.swift
//  Project Covid 19
//
//  Created by Adilzhan Akhayev on 4/19/20.
//  Copyright © 2020 Adilzhan Akhayev. All rights reserved.
//

import Foundation

struct Response: Codable {
    var latest: Latest
    var locations: [Country]
}

struct Country: Codable {
    var country: String
    var latest: Latest
    var timelines: Timeline
}

struct Latest: Codable {
    var confirmed: Int
    var deaths: Int
}

struct Timeline: Codable {
    var confirmed: CovidData
    var deaths: CovidData
}

struct CovidData: Codable {
    var latest: Int
    var timeline: [String: Int]
}

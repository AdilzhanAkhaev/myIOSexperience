//
//  ContentView.swift
//  Project Covid 19
//
//  Created by Adilzhan Akhayev on 4/19/20.
//  Copyright © 2020 Adilzhan Akhayev. All rights reserved.
//

import Foundation

struct Constant {
    static let web = Tab(name: "Data", imageSystemName: "globe")
    static let data = Tab(name: "Cases", imageSystemName: "chart.bar")
    static let trends = Tab(name: "Mobility", imageSystemName: "chart.bar")
    static let news = Tab(name: "News", imageSystemName: "dot.radiowaves.left.and.right")
    static let twitter = Tab(name: "Twitter", imageSystemName: "dot.radiowaves.left.and.right")
}

struct Tab {
    var name: String
    var imageSystemName: String
}

struct Website {
    var domain: String
    var urlString: String
}

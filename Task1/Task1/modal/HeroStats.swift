//
//  HeroStats.swift
//  Task1
//
//  Created by Adilzhan Akhayev on 2/14/20.
//  Copyright © 2020 Adilzhan Akhayev. All rights reserved.
//

import Foundation

struct HeroStats: Decodable {
    let localized_name: String
    let primary_attr: String
    let attack_type: String
    let legs: Int
    let base_health: Int
    let img: String
}


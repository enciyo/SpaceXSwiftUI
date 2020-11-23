//
//  Company.swift
//  SpaceXSwiftUI
//
//  Created by Mustafa Kilic on 24.11.2020.
//

import Foundation

// MARK: - Company
struct Company: Codable {
    let headquarters: Headquarters?
    let links: Links?
    let name, founder: String?
    let founded, employees, vehicles, launchSites: Int?
    let testSites: Int?
    let ceo, cto, coo, ctoPropulsion: String?
    let valuation: Int?
    let summary, id: String?

    enum CodingKeys: String, CodingKey {
        case headquarters, links, name, founder, founded, employees, vehicles
        case launchSites = "launch_sites"
        case testSites = "test_sites"
        case ceo, cto, coo
        case ctoPropulsion = "cto_propulsion"
        case valuation, summary, id
    }
}

struct Headquarters: Codable {
    let address, city, state: String?
}


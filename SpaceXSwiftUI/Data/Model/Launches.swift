//
//  Launches.swift
//  MovieDB
//
//  Created by Mustafa Kilic on 29.10.2020.
//


import Foundation

struct Launches : Codable{
    let links: Links?
    let staticFireDateUTC: String?
    let staticFireDateUnix: Int?
    let tdb, net: Bool?
    let window: Int?
    let rocket: String?
    let success: Bool?
    let details: String?
    let crew, ships, capsules, payloads: [String?]?
    let launchpad: String?
    let autoUpdate: Bool?
    let flightNumber: Int?
    let name, dateUTC: String?
    let dateUnix: Int?
    let date_local: String?
    let datePrecision: String?
    let upcoming: Bool?
    let cores: [Core]?
    let id: String?
}

struct Core: Codable {
    let core: String?
    let flight: Int?
    let gridfins, legs, reused, landingAttempt: Bool?
    let landingSuccess: Bool?
    let landingType, landpad: String?
}

struct Links: Codable {
    let patch: Patch?
    let reddit: Reddit?
    let presskit: String?
    let webcast: String?
    let youtubeID: String?
    let article, wikipedia: String?
}



struct Patch: Codable {
    let small, large: String?
}

struct Reddit: Codable {
    let campaign, launch, media, recovery: String?
}

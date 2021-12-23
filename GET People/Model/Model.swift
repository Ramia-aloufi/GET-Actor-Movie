//
//  Model.swift
//  GET People
//
//  Created by R on 18/05/1443 AH.
//  Copyright © 1443 R. All rights reserved.
//

import Foundation

// MARK: - Welcome2
struct Film:Codable{
    let count: Int
    let next: String
    let previous: String?
    let results: [Result]
}

// MARK: - Result
struct Result:Codable {
    let name, height, mass, hair_color: String
    let gender: String
    let homeworld: String
    let films, species, vehicles, starships: [String]
    let created, edited: String
    let url: String
}


// MARK: - Film2

struct Film2: Codable {
    let count: Int
    let results: [Result1]
}

// MARK: - Result
struct Result1: Codable {
    let title: String
    let episodeID: Int
    let openingCrawl, director, producer, releaseDate: String
    let characters, planets, starships, vehicles: [String]
    let species: [String]
    let created, edited: String
    let url: String

    enum CodingKeys: String, CodingKey {
        case title
        case episodeID = "episode_id"
        case openingCrawl = "opening_crawl"
        case director, producer
        case releaseDate = "release_date"
        case characters, planets, starships, vehicles, species, created, edited, url
    }
}

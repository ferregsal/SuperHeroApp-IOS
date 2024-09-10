//
//  Superhero.swift
//  SuperHeroApp-IOS
//
//  Created by Mañanas on 4/9/24.
//

import Foundation

struct SuperheroResponse: Codable {
    let response: String
    let results: [Superhero]
}

struct Superhero: Codable {
    let id: String
    let name: String
    let image: Image
    let powerstats: powerStats
    let biography: Biography
}

struct Image: Codable {
    let url: String
}

struct Biography: Codable {
    let realName: String
    let placeOfBirth: String
    let publisher: String
    let alignment: String
    
    enum CodingKeys: String, CodingKey{
        case publisher, alignment
        case realName = "full-name"
        case placeOfBirth = "place-of-birth"
    }
}
struct powerStats: Codable {

    let strength: String
    let speed: String
    let durability: String
    let power: String
    let combat: String
}

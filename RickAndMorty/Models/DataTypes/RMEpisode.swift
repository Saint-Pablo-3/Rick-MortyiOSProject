//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Pavel Reshetov on 25/04/2023.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode:  String
    let characters: [String]
    let url: String
    let created: String
}
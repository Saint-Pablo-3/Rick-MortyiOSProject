//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Pavel Reshetov on 27/04/2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
        // alive, dead or unknown
        case alive = "Alive"
        case dead = "Dead"
        case unknown = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}

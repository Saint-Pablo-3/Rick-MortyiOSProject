//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Pavel Reshetov on 27/04/2023.
//

import Foundation

enum RMCharacterGender: String, Codable {
    // Female, Male, Genderless or unknown
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case unknown = "unknown"
    
}

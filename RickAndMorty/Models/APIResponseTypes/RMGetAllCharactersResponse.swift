//
//  RMGetCharactersResponse.swift
//  RickAndMorty
//
//  Created by Pavel Reshetov on 06/05/2023.
//

import Foundation
//1.32.13
struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMCharacter]
}

//struct RMGetAllCharactersResponseInfo {
//    
//}

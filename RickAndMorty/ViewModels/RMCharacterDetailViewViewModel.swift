//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Pavel Reshetov on 22/05/2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}

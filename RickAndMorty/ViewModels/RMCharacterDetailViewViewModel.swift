//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Pavel Reshetov on 22/05/2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    enum SectionType: CaseIterable {
        case photo
        case information
        case episodes
    }
    
    public let sections = SectionType.allCases
    
    //MARK: - Init
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var requestUrl: URL? {
        return URL(string: character.url)
    }
    
    public var title: String {
        character.name.uppercased()
    }
}

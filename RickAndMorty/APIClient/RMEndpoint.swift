//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Pavel Reshetov on 26/04/2023.
//

import Foundation

//represents unique API endpoint
@frozen enum RMEndpoint: String {
    //endpoint to get character info
    case character
    //endpoint to get location info
    case location
    //endpoint to get episode info
    case episode
}

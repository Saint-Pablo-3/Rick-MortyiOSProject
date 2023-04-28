//
//  RMService.swift
//  RickAndMorty
//
//  Created by Pavel Reshetov on 26/04/2023.
//

import Foundation
///Primary API service object to get RM data
final class RMService {
    ///Shared singleton instance
    static let shared = RMService()
    
    ///privatized constructor
    private init() {}
    
    ///Send R&M API call
    ///-Parameters:
    /// -request: Request instance
    /// -type: The type of object we expect to get back
    /// -completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}

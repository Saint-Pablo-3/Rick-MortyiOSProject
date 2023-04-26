//
//  RMService.swift
//  RickAndMorty
//
//  Created by Pavel Reshetov on 26/04/2023.
//

import Foundation
//Primary API service object to get RM data
final class RMService {
    //Shared singleton instance
    static let shared = RMService()
    
    //privatized constructor
    private init() {}
    
    //Send R&M API call
    //-request: Request instance
    //-completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}

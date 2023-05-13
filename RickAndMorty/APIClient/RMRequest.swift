//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Pavel Reshetov on 26/04/2023.
//

import Foundation

//Object that represents a single API call
final class RMRequest {
    // Base url
    // endpoint
    // Path Components
    // query parameters
    
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    ///Desired endpoint
    private let endpoint: RMEndpoint
    
    ///Path components for APIm if any
    private let pathComponents: [String]
    
    ///Query arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// constructed url for the API request string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach ({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            //name=value&name=value
            let argumentString = queryParameters.compactMap ({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
        }
        return string
    }
    
    ///Computed & constrfucted API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    ///Desired http method
    public let httpMethod = "Get"
    
    //MARK: - Public
    
    ///Construct request
    /// - Parameters:
    ///     - endpoint: Target endpoint
    ///     - pathComponents: Collection of Path components
    ///     - queryParameters: Collection of query parameters

   public init(
        endpoint: RMEndpoint,
pathComponents: [String] = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharactersRequests = RMRequest(endpoint: .character)
}

//
//  NetworkingManager.swift
//  MyCrypto
//
//  Created by James Allen on 24/12/2024.
//

import Foundation
import Combine

class NetworkingManager {
    enum NetworkingError: LocalizedError {
        case badURLResponse(url: URL)
        case unknown
        
        var errorDescription: String? {
            switch self {
            case .badURLResponse(url: let url):
                return "[🔥] Bad Response From URL: \(url)"
            case .unknown:
                return "[⚠️] Unknown Error Occurred"
            }
        }
    }
    
    static func download(url: URL, auth: Bool) -> AnyPublisher<Data, Error> {
        var request = URLRequest(url: url)
        
        if auth {
            request.setValue("CG-11wrx5ZtKmJ62u3rPoyd8ww8", forHTTPHeaderField: "x-cg-demo-api-key")
        }
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap( {try handleURLResponse(output: $0, url: url)} )
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data {
        guard let response = output.response as? HTTPURLResponse,
              response.statusCode >= 200 && response.statusCode < 300 else {
            throw NetworkingError.badURLResponse(url: url)
        }
        return output.data
    }
    
    
    
    static func handleCompletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}

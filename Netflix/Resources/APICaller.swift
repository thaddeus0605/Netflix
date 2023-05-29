//
//  APICaller.swift
//  Netflix
//
//  Created by Thaddeus Dronski on 5/29/23.
//

import Foundation

struct Constants {
    static let API_KEY = "62a62a9e976471d2e994758ccca0cbc8"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    case failedToGetData
}


class APICaller {
    
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movies], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let result = try JSONDecoder().decode(TrendingMovies.self, from: data)
                completion(.success(result.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}

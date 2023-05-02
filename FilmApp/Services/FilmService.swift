//
//  FilmService.swift
//  FilmApp
//
//  Created by Salmdo on 5/1/23.
//

import Foundation


struct FilmService {
    static let SEARCH_API = "https://www.omdbapi.com/?s=Batman&apikey=1d8956b7"
    
    func fetchFilms (completion: @escaping ([Film]?) -> Void){
        guard let url = URL(string: FilmService.SEARCH_API) else {
            completion(nil)
            fatalError("Api is incorrect")
        }
        
        URLSession.shared.dataTask(with: url) { data, res, err in
            guard let data, err == nil else {
                completion(nil)
                fatalError("Couldn't get the data form the API")
            }
             
            do
            {
                let decodedData = try JSONDecoder().decode(FilmResponse.self, from: data)
                completion(decodedData.films)
            } catch {
                completion(nil)
                fatalError("Couldn't decode the data")
            }
            
        }.resume()
    }
}

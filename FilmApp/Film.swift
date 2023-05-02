//
//  Film.swift
//  FilmApp
//
//  Created by Salmdo on 5/1/23.
//

import Foundation

struct Film: Decodable {
    let title: String
    let imdbID: String
    let poster: String
    
    private enum CodingKeys: String, CodingKey {
        case imdbID
        case title = "Title"
        case poster = "Poster"
    }
}


struct FilmResponse: Decodable {
    let films: [Film]
    
    private enum CodingKeys: String, CodingKey {
        case films = "Search"
    }
}

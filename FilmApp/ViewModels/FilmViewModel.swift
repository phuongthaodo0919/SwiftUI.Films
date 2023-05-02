//
//  FilmViewModel.swift
//  FilmApp
//
//  Created by Salmdo on 5/1/23.
//

import Foundation
import SwiftUI

struct FilmViewModel {
    let film: Film
    
     var title: String {
        film.title
    }

    
    var imdbID: String {
        film.imdbID.uppercased()
    }
    
    var poster: String {
        film.poster
    }
}

//
//  ImageService.swift
//  FilmApp
//
//  Created by Salmdo on 5/1/23.
//

import Foundation
//import UIKit
import SwiftUI

class ImageService: ObservableObject {
    @Published var downloadImage: Data?
      
    func fetchImage(url: String) {
        if let url = URL(string: url) {
            URLSession.shared.dataTask(with: url) { data, _, err in
                if let data, err == nil {
                    DispatchQueue.main.async {
                        self.downloadImage = data
                    }
                }
            }.resume()
        }
    }
}

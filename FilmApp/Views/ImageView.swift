//
//  ImageView.swift
//  FilmApp
//
//  Created by Salmdo on 5/1/23.
//

import SwiftUI

struct ImageView: View {
    @ObservedObject var imageService = ImageService()
    var url: String
    
    init(url: String) {
        self.url = url
        imageService.fetchImage(url: self.url)
    }
    
    var body: some View {
            if let data = imageService.downloadImage {
                Image(uiImage: UIImage(data: data)!)
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 150)
            } else {
                Image(systemName: "photo.artframe")
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 150)
            }
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(url: "https://m.media-amazon.com/images/M/MV5BOTY4YjI2N2MtYmFlMC00ZjcyLTg3YjEtMDQyM2ZjYzQ5YWFkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg")
    }
}

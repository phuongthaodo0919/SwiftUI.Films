//
//  MyProgressView.swift
//  SwiftUI.NeumorphicDesign
//
//  Created by Salmdo on 4/30/23.
//

import SwiftUI

struct MyProgressView: View {
    @State private var dowloaded: CGFloat = 0
    
    private func startDownload(){
        let timer = Timer(timeInterval: 0.1, repeats: true) { time in
            if dowloaded < 100 {
                dowloaded += 1
            } else {
                time.invalidate()
            }
        }
        RunLoop.main.add(timer, forMode: .common)
        
    }
    
    var body: some View {
        VStack {
            ProgressView("Loading", value: dowloaded, total: 100)
            
            Button("Download") {
                startDownload()
            }
        }.padding()
    }
}

struct MyProgressView_Previews: PreviewProvider {
    static var previews: some View {
        MyProgressView()
    }
}

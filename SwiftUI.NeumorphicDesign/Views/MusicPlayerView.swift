//
//  MusicPlayerView.swift
//  SwiftUI.NeumorphicDesign
//
//  Created by Salmdo on 4/29/23.
//

import SwiftUI

struct MusicPlayerView: View {
    
    @State private var sliderValue: Double = 0.5
    
    private var gray: Color {
        return Color(uiColor: UIColor(red: 0.51, green: 0.58, blue: 0.77, alpha: 1.00))
    }
    
    private var lightGray: Color {
        return Color(uiColor: UIColor(red: 0.96, green: 0.95, blue: 0.95, alpha: 1.00))
    }
    
    
    var body: some View {
        VStack {
            HStack {
                NeumorphicImageButton(systemName: "arrow.left", size: CGSize(width: 20, height: 20)) {
                }
                Spacer()
                Text("PLAYING NOW")
                Spacer()
                NeumorphicImageButton(systemName: "line.horizontal.3", size: CGSize(width: 20, height: 20)) {
                }
            }.padding()
            
            
            Spacer()
            
            
            Spacer()
            
            ZStack {
                Image("main")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .padding(10)
                    .shadow(color: gray, radius: 10, x: 9, y: 9)
                    .shadow(color: lightGray, radius: 10, x: -2, y: -2)
            }.clipShape(Circle().inset(by: 6))
                .shadow(color: gray, radius: 2, x: 9, y: 9)
                .shadow(color: lightGray, radius: 2, x: -4, y: -4)
            
            Spacer()
            Text("Song name")
                .font(.title)
            Text("Song lyric")
            Spacer()
            Slider(value: $sliderValue, in: 0...1, step: 0.1)
                .padding()
            
            HStack {
                NeumorphicImageButton(systemName: "backward.fill", size: CGSize(width: 30, height: 30)) {
                    
                }
                Spacer()
                NeumorphicImageButton(systemName: "stop.fill", size: CGSize(width: 30, height: 30)) {
                    
                }
                Spacer()
                NeumorphicImageButton(systemName: "forward.fill", size: CGSize(width: 30, height: 30)) {
                    
                }
            }.padding()
        }.background(Color(uiColor: UIColor(red: 0.69, green: 0.83, blue: 0.89, alpha: 1.00)))
    }
}

struct MusicPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerView()
    }
}

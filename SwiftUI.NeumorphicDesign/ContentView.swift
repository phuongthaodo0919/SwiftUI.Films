//
//  ContentView.swift
//  SwiftUI.NeumorphicDesign
//
//  Created by Salmdo on 4/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            NeumorphicImageButton(systemName: "heart.fill", onTap: {
                
            })
                .padding()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(""))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

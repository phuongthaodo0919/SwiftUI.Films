//
//  myMatchedGeometryEffect.swift
//  FilmApp
//
//  Created by Salmdo on 5/2/23.
//

import SwiftUI

struct MyMatchedGeometryEffect: View {
    @State private var isSwitched: Bool = false
    @Namespace private var myNameSpace
    
    var body: some View {
        
        HStack{
            
            if !isSwitched {
                Circle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                    .matchedGeometryEffect(id: "animation", in: myNameSpace)
            }
            
            Spacer()
            
            Button("Switch") {
                withAnimation {
                    isSwitched.toggle()
                }
               
            }
            
            Spacer()
            
            VStack {
                Circle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                
                if isSwitched {
                    Circle()
                        .fill(Color.green)
                        .matchedGeometryEffect(id: "animation", in: myNameSpace)
                }
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
            }
        }
    }
}

struct myMatchedGeometryEffect_Previews: PreviewProvider {
    static var previews: some View {
        MyMatchedGeometryEffect()
    }
}

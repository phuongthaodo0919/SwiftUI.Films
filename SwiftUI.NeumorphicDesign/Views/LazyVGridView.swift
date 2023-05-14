//
//  LazyVGrid.swift
//  SwiftUI.NeumorphicDesign
//
//  Created by Salmdo on 4/30/23.
//

import SwiftUI

struct FixedRectangle: View {
    let columns: [GridItem] = [
        GridItem(.fixed(50)),
        GridItem(.fixed(150)),
        GridItem(.fixed(100)),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: columns, spacing: 10, pinnedViews: [.sectionHeaders]) {
                    
                    ForEach(1..<10){ index in
                        Section {
                            ForEach(1..<12){ _ in
                                Rectangle()
                                    .fill(Color.red)
                                    .aspectRatio(contentMode: .fit)
                            }
                        } header: {
                            Text("Section name \(index)")
                                .frame(maxWidth: .infinity, minHeight: 30)
                                .background(Color.blue)
                        }
                    }
                }
            }
            .navigationTitle(Text("Shape list"))
        }
        
    }
}

struct SampleLazyView: View {
    let animals = ["🐶", "🐱", "🐹", "🐰", "🦊", "🐻", "🐼", "🐨", "🦁", "🐯", "🐷", "🐮", "🐸"]
    @State private var sliderValue: CGFloat = 2
    
    var body: some View {
        
        let columns: [GridItem] = Array(repeating: .init(.flexible()), count: Int(sliderValue))

        return VStack {
            Slider(value: $sliderValue, in: 2...10, step: 1)
            Text(String(format: "%.0f", sliderValue))
            
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(self.animals, id: \.self) { animal in
                        Text(animal)
                            .font(.system(size: 100))
                    }
                }
            }
            
        }.padding()
    }
}


struct LazyVGridView: View {
    
    
    
    var body: some View {
        
//        SampleLazyView()
        FixedRectangle()
    }
}

struct LazyVGrid_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridView()
    }
}

//
//  MyStateObject.swift
//  SwiftUI.NeumorphicDesign
//
//  Created by Salmdo on 4/30/23.
//

import SwiftUI


class Counter: ObservableObject {
    @Published var value: Int = 0
}

struct CounterView: View {
    @StateObject var counter = Counter()
    
    var body: some View {
        VStack {
            Text("Count: \(counter.value)")
            Button("Counter view button") {
                counter.value += 1
            }
        }.padding(20)
            .background(Color.green)
    }
}

struct MyStateObject: View {
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("My Main view count: \(count)")
            Button("Main view button") {
                count += 1
            }
            
            CounterView()
        }.padding(20)
        .background(Color.yellow)
    }
}

struct MyStateObject_Previews: PreviewProvider {
    static var previews: some View {
        MyStateObject()
    }
}

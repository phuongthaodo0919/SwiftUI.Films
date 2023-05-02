//
//  Forground.App.swift
//  FilmApp
//
//  Created by Salmdo on 5/2/23.
//

import SwiftUI

struct Forground_App: View {
    
    
    @State private var stockPrice: Double?
    private func updateStock(){
        stockPrice = Double.random(in: 0...1.0)
    }
    
    var body: some View {
        VStack {
            Text("Check stock")
                .font(.title)
            Text(stockPrice != nil ? "$\(String(format: "%.2f", stockPrice!))" : "" )
            
        }
        
        .onAppear(){
            updateStock()
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
            updateStock()
        }
    }
}

struct Forground_App_Previews: PreviewProvider {
    static var previews: some View {
        Forground_App()
    }
}

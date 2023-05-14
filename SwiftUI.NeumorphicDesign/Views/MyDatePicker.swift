//
//  MyDatePicker.swift
//  SwiftUI.NeumorphicDesign
//
//  Created by Salmdo on 4/30/23.
//

import SwiftUI

struct MyDatePicker: View {
    @State var choosedDate: Date = Date()
    
    var body: some View {
       DatePicker("Choose a date", selection: $choosedDate)    }
}

struct MyDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        MyDatePicker()
    }
}

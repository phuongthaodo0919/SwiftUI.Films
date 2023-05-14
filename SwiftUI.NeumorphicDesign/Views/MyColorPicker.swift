//
//  MyColorPicker.swift
//  SwiftUI.NeumorphicDesign
//
//  Created by Salmdo on 4/30/23.
//

import SwiftUI

struct MyColorPicker: View {
    @State var color: Color = Color.green
    
    var body: some View {
        ColorPicker("Select a color", selection: $color)
    }
}

struct MyColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        MyColorPicker()
    }
}

//
//  ColorPickerUI.swift
//  Learning
//
//  Created by Adam Kuzma on 8/24/24.
//

import SwiftUI

struct ColorPickerUI: View {
    
    @State private var selectedColor: Color = .black
    
    var body: some View {
        VStack {
            Circle()
                .foregroundStyle(selectedColor)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .padding()
            
            Form {
                ColorPicker("Change Cicle Color", selection:$selectedColor)
                .padding()
            }
        }
    }
}

#Preview {
    ColorPickerUI()
}

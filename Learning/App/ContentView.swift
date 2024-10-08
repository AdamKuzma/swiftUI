//
//  ContentView.swift
//  Learning
//
//  Created by Adam Kuzma on 8/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                Divider()
                
                ProjectRow(number: "01", title: "Text", destination: AnyView(TextUI()))
                Divider()
                ProjectRow(number: "02", title: "Shapes", destination: AnyView(ShapesUI()))
                Divider()
                ProjectRow(number: "03", title: "Colors", destination: AnyView(ColorsUI()))
                Divider()
                ProjectRow(number: "08", title: "Frames", destination: AnyView(FramesUI()))
                Divider()
                ProjectRow(number: "17", title: "Grids", destination: AnyView(GridsUI()))
                Divider()
                ProjectRow(number: "27", title: "Transitions", destination: AnyView(TransitionsUI()))
                Divider()
                ProjectRow(number: "28", title: "Sheets", destination: AnyView(SheetsUI()))
                Divider()
                ProjectRow(number: "32", title: "Navigation", destination: AnyView(NavigationUI()))
                Divider()
                ProjectRow(number: "71", title: "Draggable", destination: AnyView(DraggableUI()))
                Divider()
                ProjectRow(number: "72", title: "Color Picker", destination: AnyView(ColorPickerUI()))
                Divider()
                ProjectRow(number: "90", title: "Ripple", destination: AnyView(RippleUI()))
                Divider()
                
            }
            .navigationTitle("All Projects")
            .padding(.top, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

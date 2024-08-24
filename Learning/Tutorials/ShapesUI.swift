//
//  ShapesUI.swift
//  Learning
//
//  Created by Adam Kuzma on 8/20/24.
//

import SwiftUI

struct ShapesUI: View {
    var body: some View {
        //Circle()
        //Rectangle()
        RoundedRectangle(cornerRadius: 20)
            //.fill(Color.blue)
            //.foregroundColor(.pink)
            //.stroke(Color.blue)
            //.stroke(Color.orange, lineWidth: 20)
            //.trim(from: 0.4, to: 1.0)
            //.stroke(Color.blue, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [60]))
            //.stroke(Color.purple, lineWidth: 30)
            .frame(width: 300, height: 500)
    }
}

struct ShapesUI_Previews: PreviewProvider {
    static var previews: some View {
        ShapesUI()
    }
}

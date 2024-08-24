//
//  TextSample.swift
//  Learning
//
//  Created by Adam Kuzma on 8/20/24.
//

import SwiftUI

struct TextUI: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.system(size: 24, weight: .semibold))
                .multilineTextAlignment(.leading)
                .foregroundColor(.red)
                .frame(width: 300, height: 100, alignment: .leading)
        }
    }
}

struct TextUI_Previews: PreviewProvider {
    static var previews: some View {
        TextUI()
    }
}

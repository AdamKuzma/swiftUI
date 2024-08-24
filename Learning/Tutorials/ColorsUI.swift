//
//  ColorsUI.swift
//  Learning
//
//  Created by Adam Kuzma on 8/20/24.
//

import SwiftUI

struct ColorsUI: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.primary
                Color(UIColor.secondarySystemBackground)
            )
            .frame(width: 300, height: 200)
            .shadow(radius: 5, x: 0, y: 5)
    }
}

struct ColorsUI_Previews: PreviewProvider {
    static var previews: some View {
        ColorsUI()
    }
}

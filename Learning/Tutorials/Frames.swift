//
//  Frames.swift
//  Learning
//
//  Created by Adam Kuzma on 8/21/24.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        HStack {
            Image(systemName: "star")
                .padding(.leading, 20)
            
            Text("Favorite")
            
            Spacer()
            
            Button(action: {
                print("Button tapped")
            })
            {
                Text("Tap me")
            }
            .padding(20)
        }
    }
}

struct Frames_Previews: PreviewProvider {
    static var previews: some View {
        Frames()
    }
}

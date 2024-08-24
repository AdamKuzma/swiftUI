//
//  NavigationUI.swift
//  Learning
//
//  Created by Adam Kuzma on 8/24/24.
//

import SwiftUI

struct NavigationUI: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                NavigationLink("Page", destination: OtherScreen())
                    
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.inline)
            //.toolbar(.hidden, for: .navigationBar)
        }
    }
}

struct OtherScreen: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
        }
        .navigationTitle("Other Screen")
    }
}

#Preview {
    NavigationUI()
}

//
//  ProjectRow.swift
//  Learning
//
//  Created by Adam Kuzma on 8/24/24.
//

import SwiftUI

struct ProjectRow: View {
    let number: String
    let title: String
    let destination: AnyView
    
    var body: some View {
        NavigationLink(destination: destination) {
            HStack {
                Text(number)
                    .padding(.trailing, 10)
                
                Text(title)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
        }
    }
}

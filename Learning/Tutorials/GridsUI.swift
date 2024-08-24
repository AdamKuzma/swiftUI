//
//  GridsUI.swift
//  Learning
//
//  Created by Adam Kuzma on 8/24/24.
//

import SwiftUI

struct GridsUI: View {
    
    let spacing: CGFloat = 6
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.white)
                .frame(height: 200)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: spacing,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header: 
                        Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                        Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .background(Color.green)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
            })
        }
    }
}

#Preview {
    GridsUI()
}

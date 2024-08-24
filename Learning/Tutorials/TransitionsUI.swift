//
//  TransitionsUI.swift
//  Learning
//
//  Created by Adam Kuzma on 8/24/24.
//

import SwiftUI

struct TransitionsUI: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Open Drawer") {
                    withAnimation(.spring) {
                        showView.toggle()
                    }
                }
                .padding(.top, 20)
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .bottom))
                    //.transition(.opacity)
//                    .transition(.asymmetric(
//                        insertion: .move(edge: .leading),
//                        removal: .move(edge: .bottom)
//                    ))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionsUI()
}

//
//  SheetsUI.swift
//  Learning
//
//  Created by Adam Kuzma on 8/24/24.
//

import SwiftUI

struct SheetsUI: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet, content: {
                // Do not add conditional logic inside Sheets
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea(.all)
            
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

#Preview {
    SheetsUI()
    //SecondScreen()
}

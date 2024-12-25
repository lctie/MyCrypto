//
//  TestView.swift
//  MyCrypto
//
//  Created by James Allen on 22/12/2024.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("Accent")
                    .foregroundColor(Color.theme.accent)
                
                Text("Secondary")
                    .foregroundColor(Color.theme.secondaryText)
                
                Text("Red")
                    .foregroundColor(Color.theme.red)
                
                Text("Green")
                    .foregroundColor(Color.theme.green)
            }
            .font(.title2)
            .fontWeight(.bold)
        }
    }
}

#Preview {
    TestView()
}

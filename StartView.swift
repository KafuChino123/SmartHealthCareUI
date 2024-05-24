//
//  ContentView.swift
//  BasicFramework
//
//  Created by 马硕 on 2024/5/17.
//

import SwiftUI

struct StartView: View {
    private let startBackgroundColor = CustomColor.startColor
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("WELCOME!")
                .foregroundStyle(.white)
                .font(.custom("SmileySans-Oblique", size: 60))
            Text("Let's 身体尽在掌握")
                .foregroundStyle(.white)
                .font(.custom("SmileySans-Oblique", size: 48))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.vertical)
        .background(
            startBackgroundColor
                .ignoresSafeArea()
        )
    }
}

#Preview {
    StartView()
}

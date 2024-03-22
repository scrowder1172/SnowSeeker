//
//  WelcomeView.swift
//  SnowSeeker
//
//  Created by SCOTT CROWDER on 3/22/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Welcome to SnowSeeker")
                .font(.largeTitle)
            
            Text("Please select a resort from the left-hand menu; swipe from the edge to show it.")
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    WelcomeView()
}

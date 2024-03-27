//
//  ObservableEnvironmentView.swift
//  SnowSeeker
//
//  Created by SCOTT CROWDER on 3/21/24.
//

import SwiftUI

struct ObservableEnvironmentView: View {
    
    @State private var player: Player = Player()
    
    var body: some View {
        VStack {
            Text("Welcome!")
            HighScoreView()
        }
        .environment(player)
    }
}

#Preview {
    ObservableEnvironmentView()
}

@Observable
final class Player {
    var name: String = "Anonymous"
    var highScore: Int = 0
}

struct HighScoreView: View {
    
    @Environment(Player.self) var player
    
    var body: some View {
        @Bindable var player = player
        
        VStack{
            Text("Player: \(player.name)")
            Stepper("High Score: \(player.highScore)", value: $player.highScore, in: 0...20, step: 1)
        }
        .padding()
    }
}

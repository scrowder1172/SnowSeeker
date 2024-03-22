//
//  AlertAndSheetViewExample.swift
//  SnowSeeker
//
//  Created by SCOTT CROWDER on 3/21/24.
//

import SwiftUI

struct AlertAndSheetViewExample: View {
    
    struct User: Identifiable {
        var id: String = "Taylor Swift"
        
    }
    
    @State private var selectedUser: User? = nil
    
    @State private var newUser: User? = nil
    @State private var isShowingUser: Bool = false
    
    var body: some View {
        VStack{
            Button("Tap Me") {
                selectedUser = User()
            }
            Button("Show Alert") {
                newUser = User()
                isShowingUser = true
            }
        }
        .sheet(item: $selectedUser) { user in
            Text("User ID: \(user.id)")
                .presentationDetents([.medium, .large])
        }
        .alert("Welcome", isPresented: $isShowingUser, presenting: newUser) { user in
            Button("OK") {}
        } message: { user in
            Text("User ID: \(user.id)")
        }
    }
}

#Preview {
    AlertAndSheetViewExample()
}

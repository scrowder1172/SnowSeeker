//
//  SideBySideExampleView.swift
//  SnowSeeker
//
//  Created by SCOTT CROWDER on 3/21/24.
//

import SwiftUI

struct SideBySideExampleView: View {
    var body: some View {
        NavigationSplitView {
            NavigationLink("Primary") {
                Text("New view")
            }
        } detail: {
            Text("Content")
                .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    SideBySideExampleView()
}

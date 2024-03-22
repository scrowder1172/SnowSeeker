//
//  GroupExampleView.swift
//  SnowSeeker
//
//  Created by SCOTT CROWDER on 3/21/24.
//

import SwiftUI

struct GroupExampleView: View {
    
    @State private var layoutVertically: Bool = false
    var body: some View {
        Button {
            layoutVertically.toggle()
        } label: {
            if layoutVertically {
                VStack {
                    UserGroupView()
                }
            } else {
                HStack {
                    UserGroupView()
                }
            }
        }
    }

}

#Preview {
    GroupExampleView()
}

struct UserGroupView: View {
    var body: some View {
        Group {
            Text("Name: Paul")
            Text("Country: England")
            Text("Pets: Luna and Arya")
        }
        .font(.title)
    }
}

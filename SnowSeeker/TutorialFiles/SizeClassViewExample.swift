//
//  SizeClassViewExample.swift
//  SnowSeeker
//
//  Created by SCOTT CROWDER on 3/27/24.
//

import SwiftUI

struct SizeClassViewExample: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        if horizontalSizeClass == .compact {
            VStack {
                ChildView()
            }
        } else {
            HStack {
                ChildView()
            }
        }
    }
}

#Preview {
    SizeClassViewExample()
}

struct ChildView: View {
    var body: some View {
        Group {
            Text("View 1")
            Text("View 2")
            Text("View 3")
        }
    }
}

//
//  ViewThatFitsExample.swift
//  SnowSeeker
//
//  Created by SCOTT CROWDER on 3/27/24.
//

import SwiftUI

struct ViewThatFitsExample: View {
    var body: some View {
        ViewThatFits {
            Rectangle()
                .frame(width: 500, height: 200)
            
            Circle()
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    ViewThatFitsExample()
}

//
//  SearchableListView.swift
//  SnowSeeker
//
//  Created by SCOTT CROWDER on 3/21/24.
//

import SwiftUI

struct SearchableListView: View {
    
    let names: [String] = ["Abby", "Debbie", "Johnny", "Tommy", "Victoria", "Yolanda"]
    
    @State private var searchText: String = ""
    
    var filteredNames: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { name in
                name.localizedStandardContains(searchText)
            }
        }
        
    }
    
    
    var body: some View {
        NavigationStack {
            List(filteredNames, id: \.self) { name in
                Text(name)
            }
            .searchable(text: $searchText, prompt: "Find Person")
            .navigationTitle("Search Names")
        }
    }
}

#Preview {
    SearchableListView()
}

//
//  Facility.swift
//  SnowSeeker
//
//  Created by SCOTT CROWDER on 3/22/24.
//

import SwiftUI

struct Facility: Identifiable {
    let id: UUID = UUID()
    var name: String
    
    var icon: some View {
        if let iconName = icons[name] {
            return Image(systemName: iconName)
                .accessibilityLabel(name)
                .foregroundStyle(.secondary)
        } else {
            print("Unknown facility type: \(name)")
            return Image(systemName: "nosign")
                .accessibilityLabel("No Image Found")
                .foregroundStyle(.secondary)
        }
    }
    
    var description: String {
        if let message = descriptions[name] {
            return message
        } else {
            print("Unknown facility type: \(name)")
            return "Unknown facility type"
        }
    }
    
    private let icons = [
        "Accommodation": "house",
        "Beginners": "1.circle",
        "Cross-country": "map",
        "Eco-friendly": "leaf.arrow.circlepath",
        "Family": "person.3"
    ]
    
    private let descriptions = [
        "Accommodation": "This resort has popular on-site accommodations.",
        "Beginners": "This resort has lots of ski schools.",
        "Cross-country": "This resort has many cross-country ski routes.",
        "Eco-friendly": "This resort has won an award for environmental friendliness.",
        "Family": "This resort is popular with families."
    ]
    
    
}

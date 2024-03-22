//
//  Favorites.swift
//  SnowSeeker
//
//  Created by SCOTT CROWDER on 3/22/24.
//

import SwiftUI

@Observable
final class Favorites {
    private var resorts: Set<String>
    private let saveKey: String = "Favorites"
    
    init() {
        if let data = UserDefaults.standard.data(forKey: saveKey) {
            if let decoded = try? JSONDecoder().decode(Set<String>.self, from: data) {
                resorts = decoded
                return
            }
        }
        
        resorts = []
    }
    
    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort.id)
    }
    
    func add(_ resort: Resort) {
        resorts.insert(resort.id)
        save()
    }
    
    func remove(_ resort: Resort) {
        resorts.remove(resort.id)
        save()
    }
    
    func save() {
        if let data = try? JSONEncoder().encode(resorts) {
            UserDefaults.standard.set(data, forKey: saveKey)
        }
    }
}

//
//  The_Monarch_ProjectApp.swift
//  The Monarch Project
//
//  Created by Jimenez on 10/12/21.
//

import SwiftUI
import Firebase

@main
struct The_Monarch_ProjectApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    
    init() {
        FirebaseApp.configure()
        
        // checks if the key for userdefaults is empty
        if UserDefaults.standard.object(forKey: "value") == nil {
            // if the key is empty we set a value for that key
            UserDefaults.standard.set(uniqueID(), forKey: "value")
            
        } else {
            // This means we have a value stored on the key
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

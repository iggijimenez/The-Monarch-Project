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
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
//            LocationsView()
//                .environmentObject(vm)
        }
    }
}

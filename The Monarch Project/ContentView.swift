//
//  ContentView.swift
//  The Monarch Project
//
//  Created by Jimenez on 10/12/21.
//
import Foundation
import SwiftUI

struct ContentView: View {
    @AppStorage("showOnboarding") var showOnboarding: Bool = true
    @StateObject private var vm = LocationsViewModel()
    
//    UserDefaults.standard.set(name, forKey: "UDName")
    
    var body: some View {
        TabView {
            Homescreen()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            LocationsView()
                .environmentObject(vm)
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
        }
        .accentColor(.red)
//        .onAppear {
//            creatingRandomNumber(number: 10)
//        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

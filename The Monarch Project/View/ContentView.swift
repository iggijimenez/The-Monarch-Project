//
//  ContentView.swift
//  The Monarch Project
//
//  Created by Jimenez on 10/12/21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: FIxes
    //Need to fix the lag issue
    
    @StateObject private var vm = LocationsViewModel() 
    
    var body: some View {
        TabView {
            Homescreen()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
//            Mapscreen()
//                .tabItem {
//                    Image(systemName: "map")
//                    Text("Map")
//                }
            LocationsView()
                .environmentObject(vm)
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
        }
        .accentColor(.red)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

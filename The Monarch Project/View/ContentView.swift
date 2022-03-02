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
    
    var body: some View {
        TabView {
            Homescreen()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Postscreen()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Feed")
                }
            Mapscreen()
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
            Settingscreen()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Setting")
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

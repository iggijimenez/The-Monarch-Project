//
//  ContentView.swift
//  The Monarch Project
//
//  Created by Jimenez on 10/12/21.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    TabView {
      Homescreen()
        .tabItem {
          Image(systemName: "house")
          Text("Home")
        }
      Feedscreen()
        .tabItem {
          Image(systemName: "photo")
          Text("Feed")
        }
      Mapscreen()
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

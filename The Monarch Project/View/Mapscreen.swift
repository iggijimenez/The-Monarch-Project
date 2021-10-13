//
//  Mapscreen.swift
//  Monarch Project
//
//  Created by Jimenez on 10/13/21.
//

import SwiftUI

struct Mapscreen: View {
    var body: some View {
        
      NavigationView {
        Text("This is the map")
          .navigationBarTitle("Map")
      }
      
    }
}

struct Mapscreen_Previews: PreviewProvider {
    static var previews: some View {
        Mapscreen()
    }
}

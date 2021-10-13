//
//  Feedscreen.swift
//  Monarch Project
//
//  Created by Jimenez on 10/13/21.
//

import SwiftUI

struct Feedscreen: View {
  var body: some View {
    
    NavigationView {
      Text("This is the feed")
        .navigationBarTitle("Feed")
    }
    
  }
}

struct Feedscreen_Previews: PreviewProvider {
  static var previews: some View {
    Feedscreen()
  }
}

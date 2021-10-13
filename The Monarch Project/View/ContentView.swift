//
//  ContentView.swift
//  The Monarch Project
//
//  Created by Jimenez on 10/12/21.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject var model = ViewModel()
  
  @State var name = ""
  @State var like = ""
  
  var body: some View {
    
    VStack {
      
      List (model.list) { item in
        Text(item.name)
      }
      
//      Text(model.attending)
      
      Button(action: {
        model.addData(name: name, like: like)
        name = ""
        like = ""
      }) {
        HStack(spacing: 8) {
          Text("refresh")
          Image(systemName: "restart.circle")
            .imageScale(.large)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(
          Capsule().strokeBorder(Color.black, lineWidth: 1.25))
      }//: BUTTON
      .accentColor(Color.black)
      .padding()
      
    }
    
  }
  
  init() {
    model.getData()
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

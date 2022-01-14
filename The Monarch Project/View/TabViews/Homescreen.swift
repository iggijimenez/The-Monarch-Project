//
//  Homescreen.swift
//  Monarch Project
//
//  Created by Jimenez on 10/13/21.
//

import SwiftUI

struct Homescreen: View {
  
  @StateObject var model = EventModel()
  
  @State var name = ""
  @State var like = ""
  
  var body: some View {
    
    NavigationView {
      
      VStack {
        ScrollView{
          ForEach(model.upcomingEvents) { event in
            NavigationLink(
              destination: UpcomingEventView(event: event), label: {
                UpcomingView(event: event)
              }
            )
          }
          ForEach(model.pastEvents) { event in
            NavigationLink(
              destination: EventDetailView(event: event), label: {
                EventPostView(event: event)
              }
            )
          }
          .listRowInsets(EdgeInsets())
        }
        
      }
      .navigationTitle("FEED")
    }
    .onAppear {
      model.getData()
    }
  }
  
}

struct Homescreen_Previews: PreviewProvider {
  static var previews: some View {
    Homescreen()
  }
}

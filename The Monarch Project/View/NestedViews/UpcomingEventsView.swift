//
//  UpcomingEventsView.swift
//  Monarch Project
//
//  Created by Jimenez on 10/14/21.
//

import SwiftUI


struct UpcomingEventView: View {
  
  @StateObject var model: ViewModel
  
  init(event: Event){
    self.event = event
    self._model = StateObject(wrappedValue: ViewModel(event: event))
  }
  
  var event: Event
  
  var name = ""
  var like = ""
  
  var body: some View {
    VStack {
      
      HStack {
        VStack(alignment: .leading) {
          
          Image("dreamer_mural") //event.image
            .resizable()
            .scaledToFit()
            .frame(height: 280)
            .cornerRadius(25)
        }
      }
      
      Text(event.name)
        .font(.title2)
        .fontWeight(.semibold)
        .lineLimit(1)
        .multilineTextAlignment(.center)
        .padding(.horizontal)
      
      Text(event.description)
        .multilineTextAlignment(.center)
        .padding(.horizontal)
      Spacer()
      
      Text("\(model.attending) are attending")
        .font(.title)
        .fontWeight(.black)
      ZStack {
        Button(action: {
          model.addData(name: name, like: like)
        }) {
          HStack(spacing: 8) {
            Text(model.hasTheUserRSVPed ? "JOINED!" : "JOIN")
            Image(systemName: "person.crop.circle.fill.badge.plus")
              .imageScale(.large)
          }
          .padding(.horizontal, 16)
          .padding(.vertical, 10)
          .background(model.hasTheUserRSVPed ? Color.green : Color.blue)
          .cornerRadius(15)
        }//: BUTTON
        .accentColor(Color.black)
        .padding()
      }
      
      
      Spacer()
    }
    .onAppear {
      model.getData()
    }
  }
}

//
//  UpcomingEventsView.swift
//  Monarch Project
//
//  Created by Jimenez on 10/14/21.
//

import SwiftUI

struct UpcomingEventsView: View {
  
  var event: EventModel
  @ObservedObject var model = ViewModel()
  
  var body: some View {
    VStack {
      Image(event.image) //event.image
        .resizable()
        .scaledToFit()
        .frame(height: 250)
        .cornerRadius(25)
      
      Text(event.title)
        .font(.title2)
        .fontWeight(.semibold)
        .lineLimit(1)
        .multilineTextAlignment(.center)
        .padding(.horizontal)
      
      Text(event.description)
        .multilineTextAlignment(.center)
        .padding(.horizontal)
      
      Spacer()
    }
  }
}

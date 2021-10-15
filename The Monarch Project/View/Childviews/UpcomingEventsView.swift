//
//  UpcomingEventsView.swift
//  Monarch Project
//
//  Created by Jimenez on 10/14/21.
//

import SwiftUI

//struct UpcomingEventsView: View {
//
//  var event: Event
//  @State var variable1 = false
//  @State var status = "JOINs"
//
//
//  var body: some View {
//    VStack {
//
//      HStack {
//        VStack(alignment: .leading) {
//          Text("Top Text")
//
//          Image("dreamer_mural") //event.image
//            .resizable()
//            .scaledToFit()
//            .frame(height: 280)
//            .cornerRadius(25)
//        }
//      }
//
//      Text(event.name)
//        .font(.title2)
//        .fontWeight(.semibold)
//        .lineLimit(1)
//        .multilineTextAlignment(.center)
//        .padding(.horizontal)
//
//      Text(event.description)
//        .multilineTextAlignment(.center)
//        .padding(.horizontal)
//      Spacer()
//
//      Text("0 are attending")
//        .font(.title)
//        .fontWeight(.black)
//      ZStack {
//        Rectangle()
//          .frame(width: 100, height: 50)
//          .foregroundColor(.green)
//          .cornerRadius(20)
//        Text(status)
//          .foregroundColor(.white)
//          .font(.title2)
//          .fontWeight(.heavy)
//          .onTapGesture {
//            self.variable1.toggle()
//          }
//
//      }
//
//
//      Spacer()
//    }
//  }
//}


struct UpcomingEventView: View {
  
  @StateObject var model: ViewModel
  
  init(event: Event){
    self.event = event
    self._model = StateObject(wrappedValue: ViewModel(event: event))
  }
  
  var event: Event
  
//  @State var buttonTitle: String = "JOIN"
//  @State private var didTap:Bool = false
  
  var name = ""
  var like = ""
  var attending = 0
  
  var body: some View {
    VStack {
      
      HStack {
        VStack(alignment: .leading) {
          
          Image(event.image) //event.image
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
//          buttonTitle = "JOINED!"
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


//
//struct UpcomingEventView_Previews: PreviewProvider {
//
//  static var previews: some View {
//    UpcomingEventsView()
//  }
//
//}

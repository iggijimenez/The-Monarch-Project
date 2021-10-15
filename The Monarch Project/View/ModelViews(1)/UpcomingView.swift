//
//  UpcomingEventsView.swift
//  Monarch Project
//
//  Created by Jimenez on 10/14/21.
//

import SwiftUI
import Firebase

struct UpcomingView: View {
  
  @State var variable1 = false
  
  //MARK: BODY
  var body: some View {
    
    
    ZStack(alignment: .topLeading) {
      
      ZStack{
        Image("dreamer_mural")
          .resizable()
          .scaledToFit()
          .cornerRadius(4)
          .overlay(
            Rectangle()
              .foregroundColor(.black)
              .opacity(0.4))
        Text("Current Event")
          .fontWeight(.semibold)
          .font(.title)
        
      }
      ZStack(){
        Rectangle()
          .frame(width: 230, height: 50)
          .foregroundColor(Color.orange)
          .cornerRadius(10)
        Text("Upcoming Events")
          .padding(1)
          .foregroundColor(Color.black)
          .font(.headline)
      } //
    } //ZStack with alignment
    .onTapGesture {
      self.variable1.toggle()
    }
    .fullScreenCover(isPresented: $variable1) {
      EventDetailViewTest(Variable2: self.$variable1)
    }
    
  }
}

struct EventDetailViewTest: View {
  
  @Binding var Variable2: Bool
  
  var body: some View {
    VStack {
      
      HStack {
        VStack(alignment: .leading) {
          Text("< Back")
            .foregroundColor(.red)
            .padding()
            .onTapGesture {
              self.Variable2.toggle()
            }
          
          Image("dreamer_mural") //event.image
            .resizable()
            .scaledToFit()
            .frame(height: 280)
            .cornerRadius(25)
        }
    }
    
    Text("Upcoming Event")
      .font(.title2)
      .fontWeight(.semibold)
      .lineLimit(1)
      .multilineTextAlignment(.center)
      .padding(.horizontal)
    
    Text("This event we need helpers and we are alsing you all to come help us in this journey")
      .multilineTextAlignment(.center)
      .padding(.horizontal)
    Spacer()
    
    Text("0 are attending")
      .font(.title)
      .fontWeight(.black)
    ZStack {
      Rectangle()
        .frame(width: 100, height: 50)
        .foregroundColor(.green)
        .cornerRadius(20)
      Text("JOIN")
        .foregroundColor(.white)
        .font(.title2)
        .fontWeight(.heavy)
    }
    
    
    Spacer()
    }
  }
}

struct UpcomingView_Previews: PreviewProvider {
  static var previews: some View {
    UpcomingView()
      .previewLayout(.sizeThatFits)
  }
}

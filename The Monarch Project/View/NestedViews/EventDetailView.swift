//
//  EventDetailView.swift
//  Monarch Project
//
//  Created by Jimenez on 10/14/21.
//

import SwiftUI

struct EventDetailView: View {
    var event: Event
    
    var body: some View {
        VStack {
            eventImage
            
            eventName
            
            eventDesc
            
            Spacer()
        }
    }
    
    
    private var eventImage: some View {
        Image(event.image) //event.image
            .resizable()
            .scaledToFit()
            .frame(height: 250)
            .cornerRadius(25)
    }
    
    
    private var eventName: some View {
        Text(event.name)
            .font(.title2)
            .fontWeight(.semibold)
            .lineLimit(1)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
    }
    
    
    private var eventDesc: some View {
        ScrollView{
            Text(event.description)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
    }
    
}


struct EventDetailView_Previews: PreviewProvider {
    static var event1 = Event(id: "", name: "String", image: "String", description: "String")
    
    static var previews: some View {
        Group {
            EventPostView(event: event1)
        }
    }
    
}

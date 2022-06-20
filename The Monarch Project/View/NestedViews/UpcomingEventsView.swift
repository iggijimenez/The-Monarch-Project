//
//  UpcomingEventsView.swift
//  Monarch Project
//
//  Created by Jimenez on 10/14/21.
//

import SwiftUI
import MapKit

struct UpcomingEventView: View {
    
    @State private var settingname = ""
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 38.440740, longitude: -122.684596) , span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    @StateObject var model: ViewModel
    
    init(event: Event){
        self.event = event
        self._model = StateObject(wrappedValue: ViewModel(event: event))
    }
    
    var event: Event
    
    var name = ""
    var like = ""
    var image = ""
    var going = ""
    var joined = "JOINED"
    var notjoin = "ATTEND"
    
    var body: some View {
        ScrollView {
            VStack {
                
                eventImage
                
                eventName
                
                eventDesc
                
                Spacer()
                
                modelAttending
                
                //TODO: Create a button that shows the people who are attending
                joinButton
                
                Spacer()
                
            }
            
            //TODO: Make it so we get the data from the db
            mapEvent
            
        }
        .onAppear {
            model.getData()
        }
    }
    
    
    private var eventImage: some View {
        HStack {
            VStack(alignment: .leading) {
                
                Image("dreamer_mural") //event.image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 280)
                    .cornerRadius(25)
            }
        }
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
        Text(event.description)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
    }
    
    
    private var modelAttending: some View {
        Text("\(model.attending) are attending")
            .font(.title)
            .fontWeight(.black)
    }
    
    
    private var joinButton: some View {
        ZStack {
            Button(action: {
                if model.hasTheUserRSVPed {
                    model.deleteData(name: name, like: like) //if this this true
                } else {
                    model.addData(name: name, like: like) //if you click to go
                }
                
            }) {
                HStack(spacing: 8) {
                    Text(model.hasTheUserRSVPed ? joined : notjoin)
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
    }
    
    
    private var mapEvent: some View {
        Map(coordinateRegion: $region)
            .allowsHitTesting(false)
            .aspectRatio(1, contentMode: .fit)
            .cornerRadius(30)
    }
}

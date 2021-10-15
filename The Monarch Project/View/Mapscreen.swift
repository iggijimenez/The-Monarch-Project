//
//  Mapscreen.swift
//  Monarch Project
//
//  Created by Jimenez on 10/13/21.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
  let id = UUID()
  let name: String
  let coordinate: CLLocationCoordinate2D
}

struct Mapscreen: View {
  
  @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 38.362745, longitude: -122.688706), latitudinalMeters: 30000, longitudinalMeters: 30000)
  
  var body: some View {
    
    NavigationView {
      
      Map(coordinateRegion: $region, annotationItems: annotations) {
        place in
        MapAnnotation(coordinate: place.coordinate) {
          HStack {
//            Image(systemName: "heart.fill")
//              .foregroundColor(.red)
            Text("🦋")
              .fixedSize()
              .foregroundColor(.blue)
          }.padding(10)
            .background(Color.orange)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            .overlay(
              Image(systemName: "arrowtriangle.left.fill")
                .rotationEffect(Angle(degrees: 270))
                .foregroundColor(.orange)
                .offset(y: 10)
              
              , alignment: .bottom)
        }
      }
      
      .navigationBarTitle("Map", displayMode: .inline)
    }
    
  }
  
  let annotations = [
    Place(name: "Mont", coordinate: CLLocationCoordinate2D(latitude: 38.440740, longitude: -122.684596)),
    Place(name: "4th street", coordinate: CLLocationCoordinate2D(latitude: 38.4401872, longitude: -122.7140828)),
    Place(name: "unknown location", coordinate: CLLocationCoordinate2D(latitude: 38.443551, longitude: -122.717873)),
    Place(name: "piner road", coordinate: CLLocationCoordinate2D(latitude: 38.472084, longitude: -122.732386)),
    Place(name: "Rohert Park", coordinate: CLLocationCoordinate2D(latitude: 38.327305, longitude: -122.680399)),
    Place(name: "Petaluma 1", coordinate: CLLocationCoordinate2D(latitude: 38.235570, longitude: -122.634991)),
    Place(name: "petaluma 2", coordinate: CLLocationCoordinate2D(latitude: 38.231973, longitude: -122.636538)),
    Place(name: "Petaluma 3", coordinate: CLLocationCoordinate2D(latitude: 38.240320, longitude: -122.621978))
  ]
  
}

struct Mapscreen_Previews: PreviewProvider {
  static var previews: some View {
    Mapscreen()
  }
}

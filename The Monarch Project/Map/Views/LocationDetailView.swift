//
//  LocationDetailView.swift
//  Monarch Project
//
//  Created by jimenez on 5/19/22.
//

import SwiftUI

struct LocationDetailView: View {
    
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack {
                TabView {
                    ForEach(location.imageNames, id: \.self) {
                        Image($0)
                            .resizable()
                            .scaledToFill()
                    }
                }
                .frame(height: 500)
                .tabViewStyle(PageTabViewStyle())
            }
        }
        .ignoresSafeArea()
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(location: LocationsDataService.locations.first!)
    }
}

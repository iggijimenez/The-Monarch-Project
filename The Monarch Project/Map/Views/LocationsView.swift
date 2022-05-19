//
//  LocationsView.swift
//  Monarch Project
//
//  Created by jimenez on 5/4/22.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $vm.mapRegion)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                header
                    .padding()
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
                
                ZStack{
                    ForEach(vm.locations) { location in
                        if vm.mapLocation == location {
                            LocationPreviewView(location: location)
                                .shadow(color: Color.black.opacity(0.3), radius: 20)
                                .padding()
                                .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                        }
                    }
                }
            }
            
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsView {
    
    private var header: some View {
        VStack {
            Button {
                vm.toggleLocationsList()
            } label: {
                Text("\(vm.mapLocation.name), \(vm.mapLocation.cityName)")
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: vm.mapLocation)
                    .background(Color.white)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .foregroundColor(.primary)
                            .font(.headline)
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showLocationsList ? 180: 0))
                    }
                    .cornerRadius(10)
            }
            Spacer()
            
            if vm.showLocationsList {
                LocationsListView()
//                    .frame(maxWidth: .infinity)
                    .background(.thinMaterial)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
            }
        }
        
    }
}

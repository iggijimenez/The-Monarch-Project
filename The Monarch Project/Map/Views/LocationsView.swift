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
                
                
                Spacer()
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
                if #available(iOS 15.0, *) {
                    Text("\(vm.mapLocation.name), \(vm.mapLocation.cityName)")
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .overlay(alignment: .leading) {
                            Image(systemName: "arrow.down")
                                .foregroundColor(.primary)
                                .font(.headline)
                                .padding()
                        }
                        .cornerRadius(10)
                    
                    if vm.showLocationsList {
                        LocationsListView()
                    }
                } else {
                    // Fallback on earlier versions
                    Text("\(vm.mapLocation.name), \(vm.mapLocation.cityName)")
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .frame(height: 55)
                        .background(Color.white)
                        .frame(maxWidth: .infinity)
                    ZStack{
                        Image(systemName: "arrow.down")
                            .foregroundColor(.primary)
                            .font(.headline)
                            .padding()
                    }
                }
            }
        }
    }
}

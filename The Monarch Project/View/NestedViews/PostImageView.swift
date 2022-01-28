//
//  PostImageView.swift
//  Monarch Project
//
//  Created by jimenez on 1/14/22.
//

import SwiftUI

struct PostImageView: View {
    
    var name: Names
    
    var body: some View {
        VStack {
            Image(name.image) //event.image
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .cornerRadius(25)
            
            Text(name.name)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(1)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
        }
    }
}

struct PostImageView_Previews: PreviewProvider {
    static var name1 = Names(id: "", image: "String", name: "String")
    
    static var previews: some View {
        Group {
            PostImageView(name: name1)
        }
    }
    
}

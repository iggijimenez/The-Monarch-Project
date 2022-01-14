//
//  Feedscreen.swift
//  Monarch Project
//
//  Created by Jimenez on 10/13/21.
//

import SwiftUI

extension String {
    
    func load() -> UIImage {
        
        //try catch block
        do {
            
            // convert string
            guard let url = URL(string: self) else {
                
                return UIImage()
            }
            
            let data: Data = try Data(contentsOf: url)
            
            //create UIImage object from daat
            return UIImage(data: data) ?? UIImage()
            
        } catch {
            //
            
        }
        
        return UIImage()
    }
    
}

struct Postscreen: View {
    let items = Array(1...100).map({"Element \($0)"})
    
    let layout = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: layout) {
                        Image(uiImage: "https://images.unsplash.com/photo-1608159477202-8a0e27f807b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwbmF0dXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80".load())
                            .resizable()
//                        ForEach(items, id: \.self) { item in
//                            Text(item)
//                                .padding()
//                        }
                    }
                }
            }
            .navigationBarTitle("POST")
        }
        
    }
}

struct Postscreen_Previews: PreviewProvider {
    static var previews: some View {
        Postscreen()
    }
}

//
//  Feedscreen.swift
//  Monarch Project
//
//  Created by Jimenez on 10/13/21.
//

import SwiftUI
import Firebase

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
            
        }
        
        return UIImage()
    }
    
}

struct Postscreen: View {
    
    @ObservedObject var model = NameModel()
    
    let items = Array(1...100).map({"Element \($0)"})
    
    let layout = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        
        NavigationView {
            //            LazyVGrid(columns: layout) {
            ScrollView {
                ForEach(model.namelist) { item in
                    Image(uiImage: item.image.load())
                }
            }
            
            .navigationBarTitle("POST")
        }
        
    }
    
    init() {
        model.getData()
    }
}

struct Postscreen_Previews: PreviewProvider {
    static var previews: some View {
        Postscreen()
    }
}

//
//  EventModel.swift
//  Monarch Project
//
//  Created by Jimenez on 10/13/21.
//

import SwiftUI

struct EventModel: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var description: String
}

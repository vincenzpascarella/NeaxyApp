//
//  Electric_FruitsApp.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 11/02/22.
//

import SwiftUI

@main
struct Electric_FruitsApp: App {
    let collection = PlanetsShowroom()
    
    var body: some Scene {
        WindowGroup {
            MainView(collection: collection)
        }
    }
}

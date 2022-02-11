//
//  PlanetsShowroom.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 11/02/22.
//

import SwiftUI
class PlanetsShowroom: ObservableObject{
    typealias Planet = Showroom<String>.ShowItem
    
    private static let planets = ["🌍","🏀","🏐","⚽️", "🌍","⚽️","🏐","🎱"]
    
    private static func createShowroom() -> Showroom<String> {
        Showroom<String>(numberOfItems: 8) { index in
            planets[index]
        }
    }
    
    @Published private var model = createShowroom()
    
    var planetCollection: Array<Planet>{
        return model.showItems
    }
}

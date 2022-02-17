//
//  PlanetsShowroom.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 11/02/22.
//

import SwiftUI
class PlanetsShowroom: ObservableObject{
    
    typealias Planet = Showroom<String>.ShowItem
    
    private static let planets = [
        "Planet 1","Planet 2","Planet 3","Planet 4"]
    
    private static func createShowroom() -> Showroom<String> {
        Showroom<String>(numberOfItems: 4) { index in
            planets[index]
        }
    }
    
    @Published private var model = createShowroom()
    
    var planetCollection: Array<Planet>{
        return model.showItems
    }
    
    var isGrid: Bool{
        return model.isGrid
    }
    
    func gridSwap(_ isGrid: Bool){
        model.gridSwap(isGrid)
    }
}

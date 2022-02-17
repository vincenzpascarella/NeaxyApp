//
//  Showroom.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 11/02/22.
//

import Foundation

struct Showroom<ShowContent> {
    private(set) var showItems: Array<ShowItem>
    
    private(set) var isGrid: Bool
    
    init(numberOfItems: Int, isGrid: Bool = false, createShowrommContent: (Int) -> ShowContent){
        showItems = []
        self.isGrid = isGrid
        for item in 0..<numberOfItems {
            let content = createShowrommContent(item)
            showItems.append(ShowItem(id: item, content: content))
        }
    }
    
    mutating func gridSwap(_ isGrid: Bool){
       self.isGrid.toggle()
    }
    
    struct ShowItem: Identifiable {
        let id: Int
        let content: ShowContent
    }
    
}

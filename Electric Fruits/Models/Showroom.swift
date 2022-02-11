//
//  Showroom.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 11/02/22.
//

import Foundation

struct Showroom<ShowContent> {
    private(set) var showItems: Array<ShowItem>
    
    init(numberOfItems: Int, createShowrommContent: (Int) -> ShowContent){
        showItems = []
        for item in 0..<numberOfItems {
            let content = createShowrommContent(item)
            showItems.append(ShowItem(id: item, content: content))
        }
    }
    
    struct ShowItem: Identifiable {
        let id: Int
        let content: ShowContent
    }
}

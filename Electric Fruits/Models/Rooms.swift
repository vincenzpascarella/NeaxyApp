//
//  Rooms.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 17/02/22.
//

import Foundation

struct Rooms<RoomContent> {
    private(set) var rooms: [RoomType]
    
    init(numberOfRooms: Int, createRoomContent: (Int) -> RoomContent){
        rooms = []
        for index in 0..<numberOfRooms {
            let content = createRoomContent(index)
            rooms.append(RoomType(id: index, content: content))
        }
    }
    
    mutating func choose(_ roomButton: RoomType){
        if let chosen = rooms.firstIndex(where: { $0.id == roomButton.id})
        {
            rooms.indices.forEach({ rooms[$0].isSelected = false})
            rooms[chosen].isSelected = true
        }
    }
    
    struct RoomType: Identifiable {
        let id: Int
        let content: RoomContent
        var isSelected = false
    }
}


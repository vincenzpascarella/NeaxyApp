//
//  RoomStart.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 17/02/22.
//

import Foundation

class RoomStart: ObservableObject {
    
    typealias Room = Rooms<String>.RoomType
    
    private static let roomNames = ["School", "Hang out", "Selftime"]
    
    private static func createRooms() -> Rooms<String> {
        Rooms<String>(numberOfRooms: 3) { index in
            roomNames[index]
        }
    }
    
    @Published private var model = createRooms()
    
    var roomCollection: [Room]{
        return model.rooms
    }
    
    func choose(_ roomButton: Room){
        model.choose(roomButton)
    }
    
}

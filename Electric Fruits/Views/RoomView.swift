//
//  RoomView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 17/02/22.
//

import SwiftUI

struct RoomView: View {
    
    @ObservedObject var starting: RoomStart
    
    
    init(_ starting: RoomStart){
        self.starting = starting
    }
    
    var body: some View {
        RoomStartView(starting)
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        let room = RoomStart()
        RoomView(room)
    }
}

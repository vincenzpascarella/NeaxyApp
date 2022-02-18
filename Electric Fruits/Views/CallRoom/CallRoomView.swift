//
//  CallRoomView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 17/02/22.
//

import SwiftUI

struct CallRoomView: View {
//    @ObservedObject var call: ChildHostingController
//    var call = ViewController()
    var body: some View {
        VStack{
            AgoraVideo()
        }
        .navigationBarHidden(true)
        
    }
}

struct CallRoomView_Previews: PreviewProvider {
    static var previews: some View {
        CallRoomView()
    }
}

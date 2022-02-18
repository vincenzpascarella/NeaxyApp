//
//  RoomStartView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 17/02/22.
//

import SwiftUI

struct RoomStartView: View {
    
    @ObservedObject var starting: RoomStart
    @State var joinPopup = false
    
    private let backgroundColor: Color = Color(.systemIndigo)


        
    init(_ starting: RoomStart){
        self.starting = starting
    }
    
    var body: some View {
        VStack{
            Spacer()
            
            StartRoomHeaderView()
            
            ForEach(starting.roomCollection){ room in
                ButtonRoomView(label: room.content, isSelected: room.isSelected)
                    .onTapGesture {
                        starting.choose(room)
                    }
            }
            
            Spacer()
            
            VStack{
                
                RoomCodeView()
                
                TimeNextPlanetView()
                
            }//VStack underbutton
            .foregroundColor(.white)
            
            Spacer()
            NavigationLink(destination: CallRoomView()){
                ButtonView(label: "Start")
            }
            
            JoinButtonView(clicked: $joinPopup)
            
        }//Vstack
        .background(backgroundColor.ignoresSafeArea())
        .navigationBarHidden(true)
        .popupNavigationView(show: $joinPopup, backgroundColor: backgroundColor) {
            JoinPopUpView(close: $joinPopup)
        }
    }
}

struct RoomStartView_Previews: PreviewProvider {
    static var previews: some View {
        let room = RoomStart()
        Group {
            RoomStartView(room)
                .previewDevice("iPhone 13 Pro Max")
            RoomStartView(room)
                .previewDevice("iPhone 12 mini")
        }
    }
}

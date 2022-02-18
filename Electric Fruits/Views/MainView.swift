//
//  ContentView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 11/02/22.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var collection: PlanetsShowroom
    @ObservedObject var starting: RoomStart
    @State var joinPopup = false
    
    private let backgroundColor: Color = Color(.systemIndigo)
    
    var body: some View {
        NavigationView{
            VStack{
                NavBarMainView(collection)
                if collection.isGrid{
                    PlanetShowroomGridView(collection)
                } else {
                    PlanetShowroomSingleView(collection)
                }
                NavigationLink(destination: RoomView(starting)){
                    ButtonView(label: "Start a room")
                }
                
                JoinButtonView(clicked: $joinPopup)
            }//VStack
            .background(backgroundColor.ignoresSafeArea())
            .navigationBarHidden(true)
            .popupNavigationView(show: $joinPopup, backgroundColor: backgroundColor) {
                JoinPopUpView(close: $joinPopup)
            }
        }
    }//body
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        let collection = PlanetsShowroom()
        let room = RoomStart()
        Group {
            MainView(collection: collection, starting: room)
                .previewDevice("iPhone 11")
            MainView(collection: collection, starting: room)
                .previewDevice("iPhone 12 mini")
        }
    }
}

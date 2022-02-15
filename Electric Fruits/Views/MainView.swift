//
//  ContentView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 11/02/22.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var collection: PlanetsShowroom
    
    
    var body: some View {
        VStack{
            NavBarMainView()
            PlanetsShowroomView(collection)
            ButtonView(label: "Start a room")
        }
        .background(Color(.systemIndigo).ignoresSafeArea())
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        let collection = PlanetsShowroom()
        MainView(collection: collection)
    }
}

//
//  NavBarMainView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 15/02/22.
//

import SwiftUI

struct NavBarMainView: View {
    
    var isGrid: Bool
    
    var collection: PlanetsShowroom
    
    init(_ collection: PlanetsShowroom){
        self.collection = collection
        isGrid = collection.isGrid
    }
    
    var body: some View {
        HStack(alignment: .firstTextBaseline){
            VStack(alignment: .leading){
                Text("Welcome to").font(.title3).opacity(0.6)
                Text("Your Galaxy").font(.title)
                HStack{
                    Image(systemName: "square.fill")
                        .opacity(isGrid ? 0.5 : 1)
                    Image(systemName: "square.grid.2x2.fill")
                        .opacity(isGrid ? 1 : 0.5)
                }
                .padding(.horizontal , 2)
                .shadow(color: .white.opacity(0.6), radius: 7)
                .onTapGesture {
                    collection.gridSwap(isGrid)
                }
                
            }
            
            Spacer()
            
            Image(systemName: "gearshape.fill")
        }
        .foregroundColor(.white)
        .padding()
    }
}

//
//  NavBarMainView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 15/02/22.
//

import SwiftUI

struct NavBarMainView: View {
    
    var body: some View {
        HStack(alignment: .firstTextBaseline){
            VStack(alignment: .leading){
                Text("Welcome to").font(.title3).opacity(0.6)
                Text("Your Galaxy").font(.title)
                HStack{
                    Image(systemName: "square.fill")
                    Image(systemName: "square.grid.2x2.fill")
                }
                .padding(.horizontal , 2)
                .shadow(color: .white.opacity(0.6), radius: 5)
                
            }
            
            Spacer()
            
            Image(systemName: "gearshape.fill")
        }
        .foregroundColor(.white)
        .padding()
    }
    
    struct NavBarMainView_Previews: PreviewProvider {
        static var previews: some View {
            NavBarMainView()
                .preferredColorScheme(.dark)
        }
    }
    
}

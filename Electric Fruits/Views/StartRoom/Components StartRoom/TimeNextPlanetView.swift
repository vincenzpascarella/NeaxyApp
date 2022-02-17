//
//  TimeNextPlanetView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 17/02/22.
//

import SwiftUI

struct TimeNextPlanetView: View {
    var body: some View {
        Text("Time to next planet:")
            .fontWeight(.semibold)
            .foregroundColor(.white).opacity(0.8)
            .padding(.top)
            .padding(.bottom, 8)
        
        HStack{
            Image(systemName: "clock.fill")
            
            Text("0:20 min")
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
        
    }
}

struct TimeNextPlanetView_Previews: PreviewProvider {
    static var previews: some View {
        TimeNextPlanetView()
    }
}

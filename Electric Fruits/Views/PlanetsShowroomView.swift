//
//  PlanetsShowroomView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 11/02/22.
//

import SwiftUI

struct PlanetsShowroomView: View {
    @ObservedObject var collection: PlanetsShowroom
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(collection.planetCollection){ planet in
                    PlanetView(planet: planet)
                        .frame(minWidth: UIScreen.main.bounds.size.width/(2.6))
                }
            } //HStack
            .padding(.horizontal)
        }//ScrollView
    }
}

struct PlanetView: View{
    let planet: PlanetsShowroom.Planet
    
    var body: some View{
        GeometryReader{ geometry in
            VStack{
                
                Spacer(minLength: 16)
                
                Text(planet.content)
                    .padding(.top, randomPosition(in: geometry.size))
                    .padding(.bottom, randomPosition(in: geometry.size))
                    .font(.system(size: geometry.size.width*0.9))
                
                
                Spacer(minLength: 16)
                
            }//VStack
        }//GeometryReader
    }
    
    private func randomPosition(in size: CGSize) -> CGFloat{
        size.height/planetConstant.heightDivisor * Double.random(in: 0.0...planetConstant.maxRandom)
    }
    
    private struct planetConstant {
        static let heightDivisor:CGFloat = 2
        static let maxRandom:Double = 1.5
    }
}

struct PlanetsShowroomView_Previews: PreviewProvider {
    static var previews: some View {
        let collection = PlanetsShowroom()
        Group {
            PlanetsShowroomView(collection: collection)
                .previewDevice("iPhone 11")
            PlanetsShowroomView(collection: collection)
                .previewDevice("iPhone 12 mini")
        }
    }
}

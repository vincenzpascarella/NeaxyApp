//
//  PlanetsShowroomView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 11/02/22.
//

import SwiftUI

struct PlanetShowroomGridView: View {
    
    var collection: PlanetsShowroom
    
    init(_ collection: PlanetsShowroom){
        self.collection = collection
    }
    
    var body: some View {
        ZStack(alignment: .bottom){
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(collection.planetCollection){ planet in
                        PlanetView(planet: planet)
                            .frame(minWidth: UIScreen.main.bounds.size.width/(2.6))
                    }
                } //HStack
                .padding(.horizontal)
            }//ScrollView
            
            Ellipse()
                .frame(
                    maxWidth: UIScreen.main.bounds.size.width*0.7,
                    maxHeight: UIScreen.main.bounds.size.height/40
                )
                .padding()
                .blur(radius: 10)
                .opacity(0.08)
                .foregroundColor(.white)
        }
    }
}

struct PlanetView: View{
    let planet: PlanetsShowroom.Planet
    
    var body: some View{
        GeometryReader{ geometry in
            VStack{
                
                Spacer(minLength: 16)
                
                Image(uiImage: UIImage(named: planet.content)!)
                    .padding(.top, randomPosition(in: geometry.size))
                    .padding(.bottom, randomPosition(in: geometry.size))
                    .scaleEffect(0.5)
                
                Spacer(minLength: 16)
                
            }//VStack
            .frame(maxWidth: geometry.size.width ,maxHeight: geometry.size.height)
        }//GeometryReader
    }
    
    private func randomPosition(in size: CGSize) -> CGFloat{
        size.height/planetConstant.heightDivisor * Double.random(in: 0.0...planetConstant.maxRandom)
    }
    
    private struct planetConstant {
        static let heightDivisor:CGFloat = 2
        static let maxRandom:Double = 2.6
    }
}

struct PlanetsShowroomView_Previews: PreviewProvider {
    static var previews: some View {
        let collection = PlanetsShowroom()
        Group {
            PlanetShowroomGridView(collection)
                .previewDevice("iPhone 11")
            PlanetShowroomGridView(collection)
                .previewDevice("iPhone 12 mini")
        }
    }
}

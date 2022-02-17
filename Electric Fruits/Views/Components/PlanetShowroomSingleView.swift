//
//  SinglePlanetView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 16/02/22.
//

import SwiftUI

struct PlanetShowroomSingleView: View {
    var collection: PlanetsShowroom
    
    init(_ collection: PlanetsShowroom){
        self.collection = collection
    }
    var body: some View {
        Spacer(minLength: 16)
        
        ZStack(alignment: .bottom){

        TabView{
            
                ForEach(collection.planetCollection){ planet in
                    VStack{
                    Image(uiImage: UIImage(named: planet.content)!)
                    
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
        }
        .tabViewStyle(PageTabViewStyle())
        
       
        
//        Spacer(minLength: 16)
    }
}


      

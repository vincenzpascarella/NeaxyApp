//
//  ButtonView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 15/02/22.
//

import SwiftUI

struct ButtonView: View {
    
    let label: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .fill(
                    LinearGradient(colors: [Color(0xD8D8FF), .white], startPoint: .bottom, endPoint: .center))
                .shadow(color: .black.opacity(0.4), radius: 10)
            
            Text(label).font(.title).foregroundColor(Color(0x32325E))
        }
        .frame(maxHeight: UIScreen.main.bounds.size.height/10)
        .padding()
    }
}

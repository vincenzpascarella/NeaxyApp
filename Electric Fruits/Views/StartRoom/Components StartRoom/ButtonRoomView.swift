//
//  ButtonRoomView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 17/02/22.
//

import SwiftUI

struct ButtonRoomView: View {
    
    let label: String
    var isSelected: Bool
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .fill(isSelected ? .white : Color(.systemIndigo))
                .shadow(color: .white.opacity(0.3), radius: 3)
            
            Text(label)
                .font(.title)
                .foregroundColor(isSelected ? Color(0x32325E) : .white)
        }
        .frame(maxHeight: UIScreen.main.bounds.size.height/10)
        .padding()
        
    }
}

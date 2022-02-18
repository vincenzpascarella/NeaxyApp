//
//  JoinButtonview.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 16/02/22.
//

import SwiftUI

struct JoinButtonView: View {
    @Binding var clicked: Bool
    
    var body: some View {
        Button{
            clicked.toggle()
        } label: {
            Text("Join a room")
                .font(.title3)
                .underline()
                .foregroundColor(.white)
                .contentShape(Rectangle())
                .padding()
                .padding(.horizontal)
        }
        .padding(.vertical, -16)
    }
}



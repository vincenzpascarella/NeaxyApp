//
//  StartRoomHeaderView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 17/02/22.
//

import SwiftUI

struct StartRoomHeaderView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    var body: some View {
        
        HStack{
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title.weight(.bold))
                    .opacity(0.6)
                    .padding(.horizontal)
            }
            
            Spacer()
            
            Text("Start a room")
                .font(.largeTitle.weight(.bold))
                .padding(.trailing, 48)
            
            Spacer()
            
        }//HStack
        .foregroundColor(.white)
    }
}

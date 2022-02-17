//
//  RoomCodeView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 17/02/22.
//

import SwiftUI

struct RoomCodeView: View {
    var body: some View {
        
        Text("Room code:")
            .fontWeight(.semibold)
            .foregroundColor(.white).opacity(0.8)
            .padding(.bottom, 8)
        
        HStack{
            Spacer()
            
            Image(systemName: "qrcode")
                .font(Font.body.weight(.bold))
                .padding(.leading, 32)
                .scaleEffect(1.2)
            
            Text("3G5GK9")
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Spacer()
            
            Image(systemName: "doc.on.doc")
                .font(Font.body.weight(.bold))
                .opacity(0.6)
                .padding(.trailing)
            
        }//HStack room code
    }
}

struct RoomCodeView_Previews: PreviewProvider {
    static var previews: some View {
        RoomCodeView()
    }
}

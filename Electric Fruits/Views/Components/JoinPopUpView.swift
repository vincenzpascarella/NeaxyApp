//
//  JoinPopUpView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 17/02/22.
//

import SwiftUI

struct JoinPopUpView: View {
    
    @Binding var close: Bool
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                HStack{
                    
                    Spacer()
                    
                    Text("Join a room")
                        .font(.title)
                        .foregroundColor(Color(0x32325E))
                        .padding(.leading, 32)
                    
                    Spacer()
                    
                    Button{
                        withAnimation{close.toggle()}
                    } label: {
                        Image(systemName: "xmark")
                            .font(.title2.bold())
                            .opacity(0.5)
                            .foregroundColor(Color(.systemIndigo))
                            .padding(.bottom, 32)
                    }
                    
                    
                }
                .padding(.top)
                .padding(.horizontal)
                
                Text("Insert here the room code")
                    .font(.title2)
                    .foregroundColor(Color(0x32325E))
                
                Spacer()
                
                Button {
                    
                } label: {
                    ZStack(alignment: .center){
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color(.systemIndigo))
                        
                        Text("Enter")
                            .foregroundColor(.white)
                    }
                    .frame(maxHeight: geometry.size.height/5)
                    .padding(.vertical)
                    .padding(.horizontal, geometry.size.width/6)
                }
                
            }
        }
    }
}

struct JoinPopUpView_Previews: PreviewProvider {
    static var previews: some View {
        JoinPopUpView(close: .constant(true))
    }
}

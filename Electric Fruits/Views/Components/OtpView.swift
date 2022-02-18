//
//  OtpView.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 18/02/22.
//

import SwiftUI
import Combine

struct OtpView: View {
    
      @StateObject var viewModel = Otp(textLimit: textLimit)
      @State var isFocused = false
      
      private static let textLimit = 6
      let textBoxWidth = UIScreen.main.bounds.width / 9
    let textBoxHeight = UIScreen.main.bounds.height / 10.8
      let spaceBetweenBoxes: CGFloat = 10
      let paddingOfBox: CGFloat = 1
      var textFieldOriginalWidth: CGFloat {
          (textBoxWidth*6)+(spaceBetweenBoxes*3)+((paddingOfBox*2)*3)
      }
      
      var body: some View {
              
              VStack {
                  
                  ZStack {
                      
                      HStack (spacing: spaceBetweenBoxes){
                          
                          otpText(text: viewModel.otp1)
                          otpText(text: viewModel.otp2)
                          otpText(text: viewModel.otp3)
                          otpText(text: viewModel.otp4)
                          otpText(text: viewModel.otp5)
                          otpText(text: viewModel.otp6)
                      }
                      
                      
                      TextField("", text: $viewModel.otpField)
                      .onReceive(Just(viewModel.otpField)) { _ in limitText(6)}
                      .frame(width: isFocused ? 0 : textFieldOriginalWidth, height: textBoxHeight)
                      .disabled(viewModel.isTextFieldDisabled)
                      .textContentType(.oneTimeCode)
                      .foregroundColor(.clear)
                      .accentColor(.clear)
                      .background(Color.clear)
                      .keyboardType(.numberPad)
                  }
          }
      }
      
      private func otpText(text: String) -> some View {
          
          return Text(text)
              .font(.title)
              .frame(width: textBoxWidth, height: textBoxHeight)
              .background(VStack{
                Spacer()
                  ZStack{
                RoundedRectangle(cornerRadius: 15)
                      .innerShadow(color: Color(0x5B5BBE).opacity(0.3), radius: 0.3, cornerRadius: 15)
//                    .frame(height: 0.5)
                    .foregroundColor(.white)
                      RoundedRectangle(cornerRadius: 15)
                          .foregroundColor(.white)
                          .scaleEffect(0.8)
                          .blur(radius: 10)
                  }
               })
              .padding(paddingOfBox)
      }
    
    private func limitText(_ upper: Int) {
        if viewModel.otpField.count > upper {
            viewModel.otpField = String(viewModel.otpField.prefix(upper))
            }
        }
}

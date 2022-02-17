//
//  Extensions.swift
//  Electric Fruits
//
//  Created by Vincenzo Pascarella on 15/02/22.
//

import SwiftUI

// MARK: Color Hex extension

extension Color {
    init(_ hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255,
            green: Double((hex >> 8) & 0xFF) / 255,
            blue: Double(hex & 0xFF) / 255,
            opacity: alpha
        )
    }
}

// MARK: Custom popup extension

extension View{
    
    func popupNavigationView<Content: View>(horizontalPadding: CGFloat = 40, show: Binding<Bool>, @ViewBuilder content: @escaping ()->Content)-> some View{
        return ZStack{
            self
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            
            if show.wrappedValue{
                
                
                self
                    .blur(radius: 3)
                
                GeometryReader{ proxy in
                    
                    Color.white
                        .opacity(0.15)
                        .ignoresSafeArea()
                    
                    let size = proxy.size
                    
                    content()
                        .frame(width: size.width - horizontalPadding, height: size.height / 2.3, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(30)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
            }
        }
    }
}


//This extension enables the back gesture everywhere

//extension UINavigationController: UIGestureRecognizerDelegate {
//    override open func viewDidLoad() {
//        super.viewDidLoad()
//        interactivePopGestureRecognizer?.delegate = self
//    }
//}

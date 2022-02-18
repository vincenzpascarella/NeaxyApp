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
    
    func popupNavigationView<Content: View>(horizontalPadding: CGFloat = 40, show: Binding<Bool>, backgroundColor: Color = .black, @ViewBuilder content: @escaping ()->Content)-> some View{
        return ZStack{
            
            if show.wrappedValue{
                Rectangle()
                    .fill(backgroundColor)
                    .ignoresSafeArea()

            }
            
            self
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .blur(radius: show.wrappedValue ? 3 : 0)
            
            if show.wrappedValue{
                
                
//                self
//                    .blur(radius: 3)
                
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


 // MARK: Inner Shadows

extension View {
    func innerShadow(color: Color, radius: CGFloat = 0.1, cornerRadius: CGFloat = 0) -> some View {
        modifier(InnerShadow(color: color, radius: min(max(0, radius), 1), cornerRadius: cornerRadius))
    }
}

private struct InnerShadow: ViewModifier {
    var color: Color = .gray
    var radius: CGFloat = 0.1
    var cornerRadius: CGFloat = 0

    private var colors: [Color] {
        [color.opacity(0.75), color.opacity(0.0), .clear]
    }

    func body(content: Content) -> some View {
        GeometryReader { geo in
            content
                .overlay(LinearGradient(gradient: Gradient(colors: self.colors), startPoint: .top, endPoint: .bottom)
                    .frame(height: self.radius * self.minSide(geo)),
                         alignment: .top)
                .overlay(LinearGradient(gradient: Gradient(colors: self.colors), startPoint: .bottom, endPoint: .top)
                    .frame(height: self.radius * self.minSide(geo)),
                         alignment: .bottom)
                .overlay(LinearGradient(gradient: Gradient(colors: self.colors), startPoint: .leading, endPoint: .trailing)
                    .frame(width: self.radius * self.minSide(geo)),
                         alignment: .leading)
                .overlay(LinearGradient(gradient: Gradient(colors: self.colors), startPoint: .trailing, endPoint: .leading)
                    .frame(width: self.radius * self.minSide(geo)),
                         alignment: .trailing)
                .cornerRadius(cornerRadius)
        }
    }

    func minSide(_ geo: GeometryProxy) -> CGFloat {
        CGFloat(3) * min(geo.size.width, geo.size.height) / 2
    }
}



//This extension enables the back gesture everywhere

//extension UINavigationController: UIGestureRecognizerDelegate {
//    override open func viewDidLoad() {
//        super.viewDidLoad()
//        interactivePopGestureRecognizer?.delegate = self
//    }
//}

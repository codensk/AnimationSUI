//
//  GradientTitle.swift
//  AnimationSUI
//
//  Created by SERGEY VOROBEV on 14.08.2021.
//

import SwiftUI

struct GradientTitle: ViewModifier {
    var title: String
    var fontSize: CGFloat
    var fontWeight: Font.Weight
    
    func body(content: Content) -> some View {
        LinearGradient(
            gradient:
                Gradient(
                    colors: [
                        Color(
                            red: 147 / 255,
                            green: 145 / 255,
                            blue: 255 / 255,
                            opacity: 1),
                        
                        Color(
                            red: 0,
                            green: 8 / 255,
                            blue: 192 / 255,
                            opacity: 1)
                    ]
                ),
            startPoint: .top,
            endPoint: .bottom
        )
        .mask(
            Text(title)
                .font(.system(size: fontSize))
                .fontWeight(fontWeight)
        )
    }
}

extension View {
    func TitleWithGradient(_ title: String, weight: Font.Weight, size: CGFloat) -> some View {
        modifier(GradientTitle(title: title, fontSize: size, fontWeight: weight))
    }
}

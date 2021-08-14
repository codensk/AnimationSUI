//
//  BeeView.swift
//  AnimationSUI
//
//  Created by SERGEY VOROBEV on 13.08.2021.
//

import SwiftUI

struct BeeView: View {
    var width: CGFloat = 100
    var height: CGFloat = 100
    var startYPos: CGFloat = 0
    var scaleStart: CGFloat = 1
    var scaleEnd: CGFloat = 0.5
    var duration: Double = 8
    var reverse: Bool = false
    
    private let screenWidth: CGFloat = UIScreen.main.bounds.width
    private let screenHeight: CGFloat = UIScreen.main.bounds.height
    
    @State private var startAnimate: Bool = false
    @State private var position: CGFloat = 0
    
    var body: some View {
        GeometryReader { geometry in
            Image("bee")
                .resizable()
                .frame(
                    width: width,
                    height: height
                )
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: reverse ? 1 : 0, z: 0))
                .scaleEffect(startAnimate ? scaleEnd : scaleStart)
                .offset(
                    x: reverse ? screenWidth - position : -width + position,
                    y: geometry.size.height - startYPos
                )
                .animation(.easeInOut(duration: duration))
                .onAppear {
                    startAnimate = true
                    position = screenWidth + width
                }
        }
    }
}

struct BeeView_Previews: PreviewProvider {
    static var previews: some View {
        BeeView()
    }
}

extension AnyTransition {
    static var customTransition: AnyTransition {
        let insertion = AnyTransition.move(edge: .top)
            .combined(with: .scale(scale: 0.2, anchor: .topTrailing))
            .combined(with: .opacity)
        let removal = AnyTransition.move(edge: .top)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

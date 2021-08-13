//
//  FlowerView.swift
//  AnimationSUI
//
//  Created by SERGEY VOROBEV on 13.08.2021.
//

import SwiftUI

struct FlowerView: View {
    var imageName: String = "flower"
    var x: CGFloat
    var y: CGFloat
    var scale: CGFloat = 1.0
    var speed: Double = 5.0
    var reversed: Bool = false
    
    @State private var rotateAngle = 0.0
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 40, height: 40)
                .scaleEffect(scale)
                .rotationEffect(reversed ? -.degrees(rotateAngle) : .degrees(rotateAngle))
                .onAppear {
                    withAnimation (
                        .easeInOut(duration: speed)
                            .repeatForever()) {
                        rotateAngle = 180
                    }
                }
        }
        .offset(x: x, y: y)
    }
}

struct Flower_Previews: PreviewProvider {
    static var previews: some View {
        FlowerView(x: 100, y: 100)
    }
}

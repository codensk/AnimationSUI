//
//  GrassView.swift
//  AnimationSUI
//
//  Created by SERGEY VOROBEV on 13.08.2021.
//

import SwiftUI

struct GrassView: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                FlowerView(
                    x: 10,
                    y: 0,
                    scale: 1.2,
                    speed: 8,
                    reversed: false
                )
                    .zIndex(1)
                
                FlowerView(
                    imageName: "flower2",
                    x: geometry.size.width / 5.5,
                    y: 40,
                    scale: 0.7,
                    speed: 8,
                    reversed: true
                )
                    .zIndex(1)
                
                FlowerView(
                    x: geometry.size.width / 3,
                    y: 20,
                    scale: 0.8,
                    speed: 12,
                    reversed: true
                )
                    .zIndex(1)
                
                FlowerView(
                    x: geometry.size.width / 1.7,
                    y: 25,
                    scale: 1.3,
                    speed: 7,
                    reversed: false
                )
                    .zIndex(1)
                
                FlowerView(
                    imageName: "flower2",
                    x: geometry.size.width / 1.35,
                    y: 10,
                    scale: 0.9,
                    speed: 8,
                    reversed: true
                )
                    .zIndex(1)
                
                FlowerView(
                    x: geometry.size.width / 1.1,
                    y: 15,
                    scale: 1.6,
                    speed: 15,
                    reversed: true
                )
                    .zIndex(1)
                
                Image("grass")
                    .resizable()
                    .frame(height: 100)
                    .offset(y: 1)
            }
        }
        .frame(height: 100)
        
    }
}

struct Grass_Previews: PreviewProvider {
    static var previews: some View {
        GrassView()
    }
}

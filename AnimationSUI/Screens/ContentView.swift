//
//  ContentView.swift
//  AnimationSUI
//
//  Created by SERGEY VOROBEV on 13.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var startAnimation: Bool = false
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                SkyBackgroundView()
                
                BeeView(
                    width: 100,
                    height: 100,
                    startYPos: geometry.size.height / 4,
                    scaleStart: 1,
                    scaleEnd: 0.5,
                    duration: 15
                )
                
                BeeView(
                    width: 100,
                    height: 100,
                    startYPos: geometry.size.height / 2,
                    scaleStart: 0.5,
                    scaleEnd: 0.2,
                    duration: 14,
                    reverse: true
                )
                
                BeeView(
                    width: 80,
                    height: 80,
                    startYPos: geometry.size.height / 3,
                    scaleStart: 0.5,
                    scaleEnd: 0.2,
                    duration: 20
                )
                
                VStack {
                    Spacer()
                    
                    GrassView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

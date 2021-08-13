//
//  SunView.swift
//  AnimationSUI
//
//  Created by SERGEY VOROBEV on 13.08.2021.
//

import SwiftUI

struct SunView: View {
    var x: CGFloat
    var y: CGFloat
    
    @State private var opacity = 0.0
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Circle()
                    .fill(Color(red: 255 / 255, green: 255 / 255, blue: 192 / 255, opacity: 0.8))
                    .blur(radius: 50)
                    .scaleEffect(0.4)
                    .offset(
                        x: x,
                        y: y
                    )
                
                Circle()
                    .fill(Color.yellow)
                    .blur(radius: 100)
                    .opacity(opacity)
                    .scaleEffect(0.2)
                    .offset(
                        x: x,
                        y: y
                    ).onAppear {
                        withAnimation (
                            .easeInOut(duration: 4)
                                .repeatForever()) {
                            opacity = 0.7
                        }
                    }
            }
        }
    }
}

struct Sun_Previews: PreviewProvider {
    static var previews: some View {
        SunView(x: 100, y: 100)
    }
}

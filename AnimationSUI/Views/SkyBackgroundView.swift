//
//  SkyBackgroundView.swift
//  AnimationSUI
//
//  Created by SERGEY VOROBEV on 13.08.2021.
//

import SwiftUI

struct SkyBackgroundView: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                LinearGradient(
                    gradient:
                        Gradient(
                            colors: [Color.blue, Color.white]),
                    startPoint: .top,
                    endPoint: .bottom
                ).ignoresSafeArea()
                
                SunView(
                    x: -geometry.size.width / 4,
                    y: -geometry.size.height / 2.6
                )
            }
        }
    }
}

struct SkyBackground_Previews: PreviewProvider {
    static var previews: some View {
        SkyBackgroundView()
    }
}

//
//  FinishTextView.swift
//  AnimationSUI
//
//  Created by SERGEY VOROBEV on 14.08.2021.
//

import SwiftUI

struct FinishTextView: View {
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        VStack(spacing: 0) {
            TitleWithGradient("корова по имени",
                              weight: .light,
                              size: 30)
            .frame(
                minWidth: 0,
                maxWidth: 260,
                minHeight: 0,
                maxHeight: 40,
                alignment: .leading
            )

            TitleWithGradient("Бурёнка".uppercased(),
                              weight: .bold,
                              size: 50)
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: 56,
                alignment: .leading
            )
            
        }
        .scaleEffect(scale)
        .onAppear {
            withAnimation (
                .easeInOut(duration: 3)
                    .repeatForever()) {
                scale = 0.8
            }
        }
    }
}

struct FinishTextView_Previews: PreviewProvider {
    static var previews: some View {
        FinishTextView()
    }
}

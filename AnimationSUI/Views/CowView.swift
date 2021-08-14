//
//  CowView.swift
//  AnimationSUI
//
//  Created by SERGEY VOROBEV on 14.08.2021.
//

import SwiftUI

struct CowView: View {
    @State private var scale: CGFloat = 0.1
    @State private var showMoo: Bool = false
    @State private var offsetY: CGFloat = 60.0
        
    var body: some View {
        ZStack {
            Image("cow")
                .resizable()
                .frame(width: 100, height: 100)
                .scaleEffect(scale)
                .offset(x: 0, y: offsetY)
                .animation(.easeInOut(duration: 10))
                .onAppear {
                    scale = 1.7
                    
                    offsetY = -60.0
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                        withAnimation {
                            self.showMoo = true
                        }
                    }
                }
            
            if showMoo {
                Text("Мууу")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .offset(x: -110, y: -140)
            }
            
            
            
        }
    }
}

struct CowView_Previews: PreviewProvider {
    static var previews: some View {
        CowView()
    }
}

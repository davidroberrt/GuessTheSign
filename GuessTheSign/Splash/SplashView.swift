//
//  ContentView.swift
//  GuessTheSign
//
//  Created by David Robert on 17/09/24.
//

import SwiftUI



struct SplashView: View {    
    
    @State private var offSetValue: CGFloat = 0
    @State private var colorTest: Color = .blue
    @State private var colorTest2: Color = .purple
    @State private var offSetValue2: CGFloat = 0
    @State private var showingContentView: Bool = false
    
    var body: some View {
        if showingContentView == false{
            ZStack{
                RadialGradient(colors: [colorTest2, .black], center: .center, startRadius: 0, endRadius: offSetValue)
                RadialGradient(colors: [.cyan, .clear], center: .center, startRadius: 20, endRadius: 210).offset(x:offSetValue,y:offSetValue2).opacity(0.3)
                RadialGradient(colors: [colorTest, .clear], center: .center, startRadius: 20, endRadius: 200).offset(x:-120,y:-offSetValue2).opacity(0.3)
                Image("logoWhite")
                    .resizable()
                    .frame(width: 150, height: 150)
            }
            .ignoresSafeArea()
            .onAppear{
                withAnimation(.easeInOut(duration: 3)){
                    offSetValue = 300
                    colorTest = .purple
                    colorTest2 = .blue
                    offSetValue2 = 120
                }
                Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false){ _ in
                    withAnimation(.default){
                        showingContentView = true
                    }
                    
                }
            }
        } else{
            OnboardingView()
        }
        
    }
}
#Preview {
    SplashView()
}

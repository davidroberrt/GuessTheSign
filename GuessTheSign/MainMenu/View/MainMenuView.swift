//
//  MainMenuView.swift
//  GuessTheSign
//
//  Created by David Robert on 25/09/24.
//

import SwiftUI

struct MainMenuView: View {
    @State public var selectCategory = ""
    let categoryPlate = ["Placas de Indicação","Placas de Advertência","Placas de Regulamentação","Placas de Serviços Auxiliares"]
    
    var body: some View {
        NavigationStack{
            ZStack{
                RadialGradient(colors: [.blue, .black], center: .center, startRadius: 0, endRadius: 300)
                RadialGradient(colors: [.cyan, .clear], center: .center, startRadius: 20, endRadius: 200).offset(x:-120,y:-200).opacity(0.3)
                RadialGradient(colors: [.purple, .clear], center: .center, startRadius: 20, endRadius: 210).offset(x:120,y:100).opacity(0.3)
                VStack(alignment: .center){
                    Section("Selecione a categoria que quer jogar"){
                        Picker("Selection", selection: $selectCategory){
                            ForEach(categoryPlate, id: \.self){
                                Text($0)
                                    .foregroundColor(Color.white)
                            }
                        }
                        .pickerStyle(.wheel)
                    }
                    .foregroundColor(Color.white)
                    NavigationLink(destination: ContentView()) {
                        Rectangle()
                            .frame(height: 58)
                            .clipShape(Capsule())
                            .foregroundColor(Color.red.opacity(0.8))
                            .overlay {
                                Text("Começar")
                                    .foregroundStyle(.white)
                            }
                    }
                    .padding(50)
                }
            }
            .ignoresSafeArea(.all)
        }
        .navigationBarBackButtonHidden(true)
    }
}


#Preview {
    MainMenuView()
}

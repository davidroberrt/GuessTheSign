//
//  ContentView.swift
//  GuessTheSign
//
//  Created by David Robert on 17/09/24.
//

import SwiftUI
 

struct GameView: View {
    
    @StateObject var viewModel: GameViewModel
    
    @Environment(\.dismiss) var dismiss // Adiciona a variável para fechar a view atual

    var body: some View {
        NavigationStack{
            ZStack{
                GradientBG()
                VStack{
                    HStack(){
                        Image("logoWhite")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Spacer()
                    }
                    .padding()
                    
                    VStack{
                        VStack{
                            Text("Toque na placa:").font(.subheadline).bold()
                            Text(viewModel.regulatorySigns[viewModel.correctAnswer].title).font(.title2.weight(.semibold))
                                .padding(2)
                        }.foregroundColor(.white)
                        
                        ForEach(0..<3){ number in
                            Button{
                                viewModel.SignTapped(number)
                            } label: {
                                Image(viewModel.regulatorySigns[number].imageName)
                                    .resizable()
                                    .frame(width: 130, height: 130)
                                    .clipShape(.buttonBorder)
                                    .shadow(radius: 10)
                                    .padding(10)
                            }
                        }
                        
                    }
                    HStack{
                        Text("Pontuação: \(viewModel.scoreNumber)").bold()
                            .foregroundColor(.white)
                            .foregroundStyle(.secondary)
                            .font(.title3)
                            .padding(15)
                            .frame(width: 190, height: 60)
                            .background(viewModel.colorScore.opacity(0.3))
                            .cornerRadius(20)
                        Text("Recorde: \(viewModel.scoreRecord)").bold()
                            .foregroundColor(.white)
                            .foregroundStyle(.secondary)
                            .font(.title3)
                            .padding(15)
                            .frame(width: 190, height: 60)
                            .background(.yellow.opacity(0.3))
                            .cornerRadius(20)
                    }
                }
            }
            .alert(viewModel.scoreTitle, isPresented: $viewModel.showingScore){
                Button("Continuar", action: viewModel.askQuestion)
                Button("Retornar ao menu principal"){
                    dismiss()
                }
            } message: {
                Text("Você alcançou a pontuação \(viewModel.scoreRecord), tente ultrapassar o seu recorde clicando em jogar novamente.")
                Text("Tente ultrapassar o seu recorde novamente")
            }
            .ignoresSafeArea()

        }
        .navigationBarBackButtonHidden(true)
    }
}


#Preview {
    GameView(viewModel: GameViewModel())
}

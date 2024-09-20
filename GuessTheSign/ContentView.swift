//
//  ContentView.swift
//  GuessTheSign
//
//  Created by David Robert on 17/09/24.
//

import SwiftUI



struct ContentView: View {
    
    @State private var regulatorySigns = [
        "R-0 Velocidade máxima permitida",
        "R-1 Parada obrigatória",
        "R-10 Proibido trânsito de veículos automotores",
        "R-11 Proibido trânsito de veículos de tração animal",
        "R-12 Proibido trânsito de bicicletas",
        "R-13 Proibido trânsito de tratores e máquinas de obras",
        "R-14 Peso bruto total máximo permitido",
        "R-15 Altura máxima permitida",
        "R-16 Largura máxima permitida",
        "R-17 Peso máximo permitido por eixo",
        "R-18 Comprimento máximo permitido",
        "R-19 Velocidade máxima permitida",
        "R-2 Dê a preferência",
        "R-20 Proibido acionar buzina ou sinal sonoro",
        "R-21 Alfândega",
        "R-22 Uso obrigatório de correntes",
        "R-23 Conserve-se à direita",
        "R-24a Sentido de circulação da via ou pista",
        "R-24b Passagem obrigatória",
        "R-25a Vire à esquerda",
        "R-25b Vire à direita",
        "R-25c Siga em frente ou à esquerda",
        "R-25d Siga em frente ou à direita",
        "R-26 Siga em frente",
        "R-27 Ônibus, caminhões e veículos de grande porte mantenham-se à direita",
        "R-28 Duplo sentido de circulação",
        "R-29 Proibido trânsito de pedestres",
        "R-3 Sentido proibido",
        "R-30 Pedestre, ande pela esquerda",
        "R-31 Pedestre, ande pela direita",
        "R-32 Circulação exclusiva de ônibus",
        "R-33 Sentido circular na rotatória",
        "R-34 Circulação exclusiva de bicicleta",
        "R-35a Ciclista, transite à esquerda",
        "R-35b Ciclista, transite à direita",
        "R-36a Ciclistas à esquerda, pedestres à direita",
        "R-36b Pedestres à esquerda, ciclistas à direita",
        "R-37 Proibido trânsito de motocicletas, motonetas e ciclomotores",
        "R-38 Proibido trânsito de ônibus",
        "R-39 Circulação exclusiva de caminhões",
        "R-40 Trânsito proibido a carros de mão",
        "R-4a Proibido virar à esquerda",
        "R-4b Proibido virar à direita",
        "R-5a Proibido retornar à esquerda",
        "R-5b Proibido retornar à direita",
        "R-6a Proibido estacionar",
        "R-6b Estacionamento regulamentado",
        "R-7 Proibido ultrapassar",
        "R-8a Proibido mudar de faixa ou pista de trânsito da esquerda para direita",
        "R-8b Proibido mudar de faixa ou pista de trânsito da direita para esquerda",
        "R-9 Proibido trânsito de caminhões"
    ].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var scoreTitle = ""
    @State private var showingScore = false
    @State private var scoreNumber = 0
    
    func SignTapped(_ number: Int){ // função analisará se a placa é correta ou não
        if number == correctAnswer{
            scoreTitle = "Correct"
            scoreNumber = scoreNumber + 1
        } else{
            scoreTitle = "Wrong"
            scoreNumber = 0
        }
        showingScore = true
    }
    
    func askQuestion(){
        regulatorySigns.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    var body: some View {
        
        ZStack{
            RadialGradient(colors: [.blue, .black], center: .center, startRadius: 0, endRadius: 300)
            RadialGradient(colors: [.purple, .clear], center: .center, startRadius: 20, endRadius: 210).offset(x:120,y:100).opacity(0.3)
            RadialGradient(colors: [.green, .clear], center: .center, startRadius: 20, endRadius: 200).offset(x:-120,y:-200).opacity(0.3)
            VStack(spacing: 30){
                VStack{
                    Text("Tap the sign of").font(.subheadline.weight(.heavy))
                    Text(regulatorySigns[correctAnswer]).font(.title.weight(.semibold))
                }.foregroundColor(.white)
                
                ForEach(0..<3){ number in
                    Button{
                        SignTapped(number)
                    } label: {
                        Image(regulatorySigns[number])
                            .resizable()
                            .frame(width: 130, height: 130)
                            .clipShape(.buttonBorder)
                            .shadow(radius: 10)
                    }
                }
            }
        }
        .ignoresSafeArea()
        .alert(scoreTitle, isPresented: $showingScore){
            Button("Continue", action: askQuestion)
        } message: {
            Text("You score is \(scoreNumber)")
        }
    }
}

#Preview {
    ContentView()
}

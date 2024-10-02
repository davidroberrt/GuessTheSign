//
//  GameViewModel.swift
//  GuessTheSign
//
//  Created by David Robert on 30/09/24.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject{
    @Published var regulatorySigns: [RegulatorySign] = [
        RegulatorySign(title: "R-0 Velocidade máxima permitida", imageName: "R-0 Velocidade máxima permitida"),
        RegulatorySign(title: "R-1 Parada obrigatória", imageName: "R-1 Parada obrigatória"),
        RegulatorySign(title: "R-10 Proibido trânsito de veículos automotores", imageName: "R-10 Proibido trânsito de veículos automotores"),
        RegulatorySign(title: "R-11 Proibido trânsito de veículos de tração animal", imageName: "R-11 Proibido trânsito de veículos de tração animal"),
        RegulatorySign(title: "R-12 Proibido trânsito de bicicletas", imageName: "R-12 Proibido trânsito de bicicletas"),
        RegulatorySign(title: "R-13 Proibido trânsito de tratores e máquinas de obras", imageName: "R-13 Proibido trânsito de tratores e máquinas de obras"),
        RegulatorySign(title: "R-14 Peso bruto total máximo permitido", imageName: "R-14 Peso bruto total máximo permitido"),
        RegulatorySign(title: "R-15 Altura máxima permitida", imageName: "R-15 Altura máxima permitida"),
        RegulatorySign(title: "R-16 Largura máxima permitida", imageName: "R-16 Largura máxima permitida"),
        RegulatorySign(title: "R-17 Peso máximo permitido por eixo", imageName: "R-17 Peso máximo permitido por eixo"),
        RegulatorySign(title: "R-18 Comprimento máximo permitido", imageName: "R-18 Comprimento máximo permitido"),
        RegulatorySign(title: "R-19 Velocidade máxima permitida", imageName: "R-19 Velocidade máxima permitida"),
        RegulatorySign(title: "R-2 Dê a preferência", imageName: "R-2 Dê a preferência"),
        RegulatorySign(title: "R-20 Proibido acionar buzina ou sinal sonoro", imageName: "R-20 Proibido acionar buzina ou sinal sonoro"),
        RegulatorySign(title: "R-21 Alfândega", imageName: "R-21 Alfândega"),
        RegulatorySign(title: "R-22 Uso obrigatório de correntes", imageName: "R-22 Uso obrigatório de correntes"),
        RegulatorySign(title: "R-23 Conserve-se à direita", imageName: "R-23 Conserve-se à direita"),
        RegulatorySign(title: "R-24a Sentido de circulação da via ou pista", imageName: "R-24a Sentido de circulação da via ou pista"),
        RegulatorySign(title: "R-24b Passagem obrigatória", imageName: "R-24b Passagem obrigatória"),
        RegulatorySign(title: "R-25a Vire à esquerda", imageName: "R-25a Vire à esquerda"),
        RegulatorySign(title: "R-25b Vire à direita", imageName: "R-25b Vire à direita"),
        RegulatorySign(title: "R-25c Siga em frente ou à esquerda", imageName: "R-25c Siga em frente ou à esquerda"),
        RegulatorySign(title: "R-25d Siga em frente ou à direita", imageName: "R-25d Siga em frente ou à direita"),
        RegulatorySign(title: "R-26 Siga em frente", imageName: "R-26 Siga em frente"),
        RegulatorySign(title: "R-27 Ônibus, caminhões e veículos de grande porte mantenham-se à direita", imageName: "R-27 Ônibus, caminhões e veículos de grande porte mantenham-se à direita"),
        RegulatorySign(title: "R-28 Duplo sentido de circulação", imageName: "R-28 Duplo sentido de circulação"),
        RegulatorySign(title: "R-29 Proibido trânsito de pedestres", imageName: "R-29 Proibido trânsito de pedestres"),
        RegulatorySign(title: "R-3 Sentido proibido", imageName: "R-3 Sentido proibido"),
        RegulatorySign(title: "R-30 Pedestre, ande pela esquerda", imageName: "R-30 Pedestre, ande pela esquerda"),
        RegulatorySign(title: "R-31 Pedestre, ande pela direita", imageName: "R-31 Pedestre, ande pela direita"),
        RegulatorySign(title: "R-32 Circulação exclusiva de ônibus", imageName: "R-32 Circulação exclusiva de ônibus"),
        RegulatorySign(title: "R-33 Sentido circular na rotatória", imageName: "R-33 Sentido circular na rotatória"),
        RegulatorySign(title: "R-34 Circulação exclusiva de bicicleta", imageName: "R-34 Circulação exclusiva de bicicleta"),
        RegulatorySign(title: "R-35a Ciclista, transite à esquerda", imageName: "R-35a Ciclista, transite à esquerda"),
        RegulatorySign(title: "R-35b Ciclista, transite à direita", imageName: "R-35b Ciclista, transite à direita"),
        RegulatorySign(title: "R-36a Ciclistas à esquerda, pedestres à direita", imageName: "R-36a Ciclistas à esquerda, pedestres à direita"),
        RegulatorySign(title: "R-36b Pedestres à esquerda, ciclistas à direita", imageName: "R-36b Pedestres à esquerda, ciclistas à direita"),
        RegulatorySign(title: "R-37 Proibido trânsito de motocicletas, motonetas e ciclomotores", imageName: "R-37 Proibido trânsito de motocicletas, motonetas e ciclomotores"),
        RegulatorySign(title: "R-38 Proibido trânsito de ônibus", imageName: "R-38 Proibido trânsito de ônibus"),
        RegulatorySign(title: "R-39 Circulação exclusiva de caminhões", imageName: "R-39 Circulação exclusiva de caminhões"),
        RegulatorySign(title: "R-40 Trânsito proibido a carros de mão", imageName: "R-40 Trânsito proibido a carros de mão"),
        RegulatorySign(title: "R-4a Proibido virar à esquerda", imageName: "R-4a Proibido virar à esquerda"),
        RegulatorySign(title: "R-4b Proibido virar à direita", imageName: "R-4b Proibido virar à direita"),
        RegulatorySign(title: "R-5a Proibido retornar à esquerda", imageName: "R-5a Proibido retornar à esquerda"),
        RegulatorySign(title: "R-5b Proibido retornar à direita", imageName: "R-5b Proibido retornar à direita"),
        RegulatorySign(title: "R-6a Proibido estacionar", imageName: "R-6a Proibido estacionar"),
        RegulatorySign(title: "R-6b Estacionamento regulamentado", imageName: "R-6b Estacionamento regulamentado"),
        RegulatorySign(title: "R-7 Proibido ultrapassar", imageName: "R-7 Proibido ultrapassar"),
        RegulatorySign(title: "R-8a Proibido mudar de faixa ou pista de trânsito da esquerda para direita", imageName: "R-8a Proibido mudar de faixa ou pista de trânsito da esquerda para direita"),
        RegulatorySign(title: "R-8b Proibido mudar de faixa ou pista de trânsito da direita para esquerda", imageName: "R-8b Proibido mudar de faixa ou pista de trânsito da direita para esquerda"),
        RegulatorySign(title: "R-9 Proibido trânsito de caminhões", imageName: "R-9 Proibido trânsito de caminhões")
    ].shuffled()

    @Published var colorScore: Color = Color.blue
    @Published var correctAnswer = Int.random(in: 0...2)
    @Published var scoreTitle: String = ""
    @Published var showingScore: Bool = false
    @Published var scoreNumber: Int = 0
    @Published var scoreRecord: Int = 0
    
    func SignTapped(_ number: Int){ // função analisará se a placa é correta ou não
        if number == correctAnswer{
            scoreTitle = "Correto"
            scoreNumber = scoreNumber + 1
            askQuestion()
            colorScore = .green
        } else{
            scoreTitle = "Você perdeu"
            scoreRecord = scoreNumber
            scoreNumber = 0
            showingScore = true
            colorScore = .blue
        }
    }
    
    func askQuestion(){
        regulatorySigns.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

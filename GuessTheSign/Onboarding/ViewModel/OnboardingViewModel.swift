//
//  OnboardingViewModel.swift
//  GuessTheSign
//
//  Created by David Robert on 24/09/24.
//

import Foundation

class OnboardingViewModel: ObservableObject {
    @Published var currentStep: Int = 0
    @Published var onboardingSteps: [OnboardingStep] = [
        OnboardingStep(title: "Bem-vindo ao Guess the Sign!", description: "Está pronto para dominar as placas de trânsito? Este jogo é a sua chance de aprender de maneira divertida e se preparar para a prova da sua carteira de motorista", textButton: "Continuar"), OnboardingStep(title: "Como Jogar", description: "A cada rodada, você verá três placas e uma pergunta. Escolha a correta antes do tempo acabar! Cada tentativa é uma oportunidade de aprender e melhorar.", textButton: "Continuar"), OnboardingStep(title: "Explore Diferentes Categorias", description: "Jogue em categorias como Sinalização, Regularização, Proibida e Advertência. Cada categoria traz novas lições e ajuda a consolidar seu conhecimento!", textButton: "Continuar"), OnboardingStep(title: "Desafio Extra!", description: "Tente adivinhar a categoria da placa apresentada. É uma ótima maneira de testar seu conhecimento e se preparar para a sua tão sonhada carteira de motorista!", textButton: "Continuar"), OnboardingStep(title: "Vamos Jogar!", description: "Toque no botão abaixo para começar a sua aventura de adivinhação e se divertir aprendendo!", textButton: "Começar")
    ]
}

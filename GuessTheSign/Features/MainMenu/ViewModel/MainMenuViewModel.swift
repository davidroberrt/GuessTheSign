//
//  MainMenuViewModel.swift
//  GuessTheSign
//
//  Created by David Robert on 02/10/24.
//

import Foundation

class MainMenuViewModel: ObservableObject{
    @Published var selectedCategory = ""
    @Published var categorySigns: [CategorySign] = [
      //CategorySign(category: "Placas de Indicação"),
      //CategorySign(category: "Placas de Advertência"),
        CategorySign(category: "Placas de Regulamentação"),
      //CategorySign(category: "Placas de Serviços Auxiliares")
    ]
}

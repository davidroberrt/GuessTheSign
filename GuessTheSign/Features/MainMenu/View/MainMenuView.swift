import SwiftUI

struct MainMenuView: View {
    @State private var selectedCategory = ""
    @StateObject var viewModel: MainMenuViewModel
    
    var body: some View {
        NavigationStack {
            ZStack {
                GradientBG()
                VStack(alignment: .center) {
                    Section("Selecione a categoria") {
                        Picker("Selecione uma categoria", selection: $selectedCategory) {
                            ForEach(viewModel.categorySigns) { category in
                                Text(category.category)
                                    .foregroundColor(Color.white)
                            }
                        }
                        .pickerStyle(.wheel)
                    }
                    .foregroundColor(Color.white)

                    NavigationLink(destination: GameView(viewModel: GameViewModel())) {
                        Rectangle()
                            .frame(height: 58)
                            .clipShape(Capsule())
                            .foregroundColor(Color.red.opacity(0.7))
                            .overlay {
                                Text("Iniciar o jogo")
                                    .foregroundColor(Color.white)
                            }
                    }
                    .padding()
                }
            }
            .ignoresSafeArea(.all)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MainMenuView(viewModel: MainMenuViewModel())
}

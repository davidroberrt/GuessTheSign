import SwiftUI

struct OnboardingView: View {
    @ObservedObject var viewModel = OnboardingViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack{
                RadialGradient(colors: [.blue, .black], center: .center, startRadius: 0, endRadius: 300)
                RadialGradient(colors: [.cyan, .clear], center: .center, startRadius: 20, endRadius: 200).offset(x:-120,y:-200).opacity(0.3)
                RadialGradient(colors: [.purple, .clear], center: .center, startRadius: 20, endRadius: 210).offset(x:120,y:100).opacity(0.3)
                VStack {
                    TabView(selection: $viewModel.currentStep) {
                        ForEach(0..<viewModel.onboardingSteps.count, id: \.self) { index in
                            VStack (spacing: 20){
                                Spacer()
                                onboardingImages(stepIndex: index)
                                Spacer().frame(height: 20)
                                titleAndDescription(title: viewModel.onboardingSteps[index].title, description: viewModel.onboardingSteps[index].description)
                                Spacer()
                            }
                            .padding(50)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    // Botão "Começar"
                    continueButton()
                        .padding(.bottom, 40)
                }
            }
            .ignoresSafeArea()
        }
    }
    @ViewBuilder
    func onboardingImages(stepIndex: Int) -> some View {
        if stepIndex == 1{
            ZStack{
                Image("17")
                    .resizable()
                    .frame(width: 200, height: 200)
            }
        }
        else if stepIndex == 2{
            ZStack{
                Image("15")
                    .resizable()
                    .frame(width: 250, height: 250)
            }
        }
        else if stepIndex == 3{
            ZStack{
                Image("3")
                    .resizable()
                    .frame(width: 200, height: 200)
            }
        }
        else if stepIndex == 4{
            ZStack{
                Image("18")
                    .resizable()
                    .frame(width: 200, height: 200)
            }
        }
        else{
            ZStack{
                Image("logoWhite")
                    .resizable()
                    .frame(width: 200, height: 200)
            }
        }
    }
    
    func titleAndDescription(title: String, description: String) -> some View {
        VStack(spacing: 16) {
            Text(title)
                .multilineTextAlignment(.center)
                .foregroundStyle(Color.white)
                .font(.title.bold())
            Text(description)
                .multilineTextAlignment(.center)
                .foregroundStyle(Color.white)
                .font(.title3)
        }
    }
    
    var onboardingProgressView: some View {
        HStack {
            Rectangle()
                .frame(width: 28, height: 9)
                .clipShape(Capsule())
            Circle()
                .frame(width: 9, height: 9)
        }
    }
    
    @ViewBuilder
    func continueButton() -> some View {
        if viewModel.currentStep < viewModel.onboardingSteps.count - 1 {
            Button(action: {
                withAnimation {
                    viewModel.currentStep += 1
                }
            }) {
                Rectangle()
                    .frame(height: 58)
                    .clipShape(Capsule())
                    .overlay {
                        Text(viewModel.onboardingSteps[viewModel.currentStep].textButton)
                            .foregroundStyle(.white)
                    }
            }
        } else {
            NavigationLink(destination: MainMenuView()) {
                Rectangle()
                    .frame(height: 58)
                    .clipShape(Capsule())
                    .foregroundColor(Color.blue)
                    .overlay {
                        Text("Começar")
                            .foregroundStyle(.white)
                    }
            }
        }
    }
}

#Preview {
    OnboardingView()
}

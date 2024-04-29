//
//  LoginView.swift
//  camp2024
//
//  Created by Fernando Santiago on 23/04/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    @State private var isShowingCover = false
    @State private var selectedAPI: ImageAPI = .goats
    
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                VStack (spacing: 16) {
                    Text("Seja bem vind@!")
                        .foregroundStyle(.white)
                        .font(.title)
                    Text("HTTP Status Code")
                        .foregroundStyle(.white)
                        .font(.title2)
                }
                .padding(.bottom, 48)
                VStack (spacing: 16) {
                    InputLoginView(
                        input: $viewModel.username,
                        textFieldValue: "usuario")
                    InputLoginView(
                        input: $viewModel.password,
                        textFieldValue: "password")
                }
                .padding(.bottom, 32)
                Button() {
                    isShowingCover = true
                    //viewModel.enterButtonAction()
                    
                } label: {
                    ZStack {
                        Capsule()
                            .fill(.black)
                            .frame(height: 48)
                        Text("ENTRAR")
                            .foregroundStyle(.white)
                    }
                    
                }
                .padding(.horizontal, 16)
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            )
            .background(
                Color("backgroundColor")
            )
            Image("logo")
        }
        .fullScreenCover(isPresented: $isShowingCover, content: {
            StatusCodeView(selectedAPI: $selectedAPI)
        })
    }
}

#Preview {
        LoginView()
}

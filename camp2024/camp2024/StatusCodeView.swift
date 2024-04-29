//
//  StatusCodeView.swift
//  camp2024
//
//  Created by Fernando Santiago on 24/04/24.
//

import Foundation
import SwiftUI

struct StatusCodeView: View {
    @State private var statusCode: String = ""
    @Binding var selectedAPI: ImageAPI
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            // Interface para selecionar a API - Menu suspenso
            Picker("Selecione uma API", selection: $selectedAPI) {
                ForEach(ImageAPI.allCases, id: \.self) { api in
                    Text(api.displayName).tag(api)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Button(action: {
              self.presentationMode.wrappedValue.dismiss()
            }) {
              Text("Voltar")
            }
        }
    }
}

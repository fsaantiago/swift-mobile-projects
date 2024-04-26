//
//  inputLoginView.swift
//  camp2024
//
//  Created by Fernando Santiago on 23/04/24.
//

import SwiftUI
import Foundation

struct InputLoginView: View {
    
    @State var input: Binding<String>
    var textFieldValue: String
    
    var body: some View {
        TextField(textFieldValue,
                  text: input)
            .padding(.vertical, 13)
            .padding(.leading, 24)
            .background(
                Capsule()
                    .fill(.white)
            )
            .padding(.horizontal, 16)
    }
}

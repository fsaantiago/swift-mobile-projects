//
//  ImageAPI.swift
//  camp2024
//
//  Created by Fernando Santiago on 24/04/24.
//

import SwiftUI
import Foundation
//Lista de APIs para uso
enum ImageAPI: String, CaseIterable {
    case goats = "https://httpgoats.com/"
    case dogs = "https://http.dog/"
    case cats = "https://httpcats.com/"
    case garden = "https://http.garden/"
    case ducks = "https://httpducks.com/"
    case pizza = "https://http.pizza/"
    
    var displayName: String {
        switch self {
        case .goats: return "Cabras"
        case .dogs: return "Cachorros"
        case .cats: return "Gatos"
        case .garden: return "Jardim"
        case .ducks: return "Patos"
        case .pizza: return "Pizza"
        }  

    }
    
    
    
}


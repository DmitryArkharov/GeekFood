//
//  GFError.swift
//  GeekFood
//
//  Created by dmitry arkharov on 13/02/2024.
//

import Foundation

enum GFError: String, Error {
    
    case invalidURL         = "The URL is invalid 🤔. Please, revise it."
    case unableToComplete   = "Unable to complete your request. Please, heck your internet connection."
    case invalidResponse    = "Invalid response from the server. Please, try again."
    case invalidData        = "Invalid data from the server. Please, try again."
    
   
}

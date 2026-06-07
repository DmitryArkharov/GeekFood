//
//  MealsListViewModel.swift
//  GeekFood
//
//  Created by dmitry arkharov on 13/02/2024.
//

import SwiftUI

@MainActor final class MealsListViewModel: ObservableObject {
    
    @Published var meals: [Meal] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedMeal: Meal?
    
    
    func getMeals() {
        isLoading = true
        
        Task {
            do {
                meals = try await NetworkManager.shared.getMeals()
                isLoading = false
            } catch {
                if let gfError = error as? GFError {
                    switch gfError {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    }
                } else {
                    alertItem = AlertContext.invalidResponse
                }
                
                isLoading = false
            }
        }
    }
}

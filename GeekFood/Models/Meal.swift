//
//  Meal.swift
//  GeekFood
//
//  Created by dmitry arkharov on 12/02/2024.
//

import Foundation

struct Meal: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct MealResponse: Decodable {
    let request: [Meal]
}

struct MockData {
    static let sampleMeal = Meal(id: 0001,
                                 name: "MockUp",
                                 description: "Yummy",
                                 price: 9.99,
                                 imageURL: "",
                                 calories: 10,
                                 protein: 4,
                                 carbs: 74)
    
    static let meals = [sampleMeal, sampleMeal, sampleMeal, sampleMeal]
}

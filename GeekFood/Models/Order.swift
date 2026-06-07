//
//  Order.swift
//  GeekFood
//
//  Created by dmitry arkharov on 15/06/2024.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Meal] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    
    func add(_ meal: Meal) {
        items.append(meal)
    }
    
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

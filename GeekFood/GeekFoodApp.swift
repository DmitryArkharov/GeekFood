//
//  GeekFoodApp.swift
//  GeekFood
//
//  Created by dmitry arkharov on 12/02/2024.
//

import SwiftUI

@main
struct GeekFoodApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            FoodTabView().environmentObject(order)
        }
    }
}

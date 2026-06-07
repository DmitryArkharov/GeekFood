//
//  ContentView.swift
//  GeekFood
//
//  Created by dmitry arkharov on 12/02/2024.
//

import SwiftUI

struct FoodTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
           MealsListView()
                .tabItem { Label("Meals List", systemImage: "fork.knife.circle") }
            
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
        }
    }
}

#Preview {
    FoodTabView()
}

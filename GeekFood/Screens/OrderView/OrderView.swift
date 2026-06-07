//
//  OrderView.swift
//  GeekFood
//
//  Created by dmitry arkharov on 12/02/2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { meal in
                            MealListCell(meal: meal)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        
                    } label: {
                        GFButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    OrderEmptyState(imageName: "empty-order",
                                    message: "No Items here yet. Add some meals here!")
                }
            }
                .navigationTitle("🥡 Orders")
        }
    }
}

#Preview {
    OrderView()
}

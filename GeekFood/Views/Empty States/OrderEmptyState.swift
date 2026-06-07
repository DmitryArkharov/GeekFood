//
//  OrderEmptyState.swift
//  GeekFood
//
//  Created by dmitry arkharov on 15/06/2024.
//

import SwiftUI

struct OrderEmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    OrderEmptyState(imageName: "empty-order", message: "blah-blah-blah")
}

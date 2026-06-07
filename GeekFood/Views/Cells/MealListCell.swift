//
//  MealListCell.swift
//  GeekFood
//
//  Created by dmitry arkharov on 13/02/2024.
//

import SwiftUI

struct MealListCell: View {
    
    var meal: Meal
    
    var body: some View {
        HStack {
            MealRemoteImage(urlString: meal.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(10)
            
            //            AsyncImage(url: URL(string: meal.imageURL)) { image in
            //                image
            //                    .resizable()
            //                    .aspectRatio(contentMode: .fit)
            //                    .frame(width: 120, height: 90)
            //                    .cornerRadius(10)
            //            } placeholder: {
            //                Image("EmptyStateMealImage")
            //                    .resizable()
            //                    .aspectRatio(contentMode: .fit)
            //                    .frame(width: 120, height: 90)
            //                    .cornerRadius(10)
            //            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(meal.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("§\(meal.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    MealListCell(meal: MockData.sampleMeal)
}

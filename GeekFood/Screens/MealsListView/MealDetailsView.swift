//
//  MealDetailsView.swift
//  GeekFood
//
//  Created by dmitry arkharov on 25/05/2024.
//

import SwiftUI

struct MealDetailsView: View {
    
    @EnvironmentObject var order: Order
    
    let meal: Meal
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack{
            MealRemoteImage(urlString: meal.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
           
            VStack{
                Text(meal.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(meal.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 30){
                    NutritionInfo(title: "Calories", value: meal.calories)
                    NutritionInfo(title: "Carbs", value: meal.carbs)
                    NutritionInfo(title: "Protein", value: meal.protein)
                }
            }
            
            Spacer()
            
            Button {
                order.add(meal)
            } label: {
               GFButton(title: "$\(meal.price, specifier: "%.2f") - add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 40)
        .overlay(Button{
            isShowingDetail = false
        } label: {
           GFXDissmissButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    MealDetailsView(meal: MockData.sampleMeal, 
                    isShowingDetail: .constant(true))
}


struct NutritionInfo: View {
    
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 5){
            Text(title)
                .font(.title3)
            
            Text("\(value)")
                .foregroundColor(.secondary)
                .font(.callout)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

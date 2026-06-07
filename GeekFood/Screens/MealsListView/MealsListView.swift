//
//  MealsListView.swift
//  GeekFood
//
//  Created by dmitry arkharov on 12/02/2024.
//

import SwiftUI

struct MealsListView: View {
    
    @StateObject var viewModel = MealsListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.meals) { meal in
                   MealListCell(meal: meal)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            viewModel.selectedMeal = meal
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("🍽️ Meals List")
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear {
                viewModel.getMeals()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail {
                MealDetailsView(meal: viewModel.selectedMeal!,
                                isShowingDetail: $viewModel.isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
    }
}

#Preview {
    MealsListView()
}

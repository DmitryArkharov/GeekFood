//
//  LoadingView.swift
//  GeekFood
//
//  Created by dmitry arkharov on 17/05/2024.
//

import SwiftUI

//struct ActivityIndicator: UIViewRepresentable {
//    func makeUIView(context: Context) -> UIActivityIndicatorView {
//        let activityIndicator = UIActivityIndicatorView(style: .large)
//        activityIndicator.color = UIColor.brandPrimary
//        activityIndicator.startAnimating()
//        return activityIndicator
//    }
//    
//    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
//}


struct LoadingView: View {
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .brandPrimary))
                .scaleEffect(2)
        }
    }
}

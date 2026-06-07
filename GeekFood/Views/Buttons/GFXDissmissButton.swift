//
//  GFXDissmissButton.swift
//  GeekFood
//
//  Created by dmitry arkharov on 15/06/2024.
//

import SwiftUI

struct GFXDissmissButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.large)
                .frame(width: 44, height: 44)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    GFXDissmissButton()
}

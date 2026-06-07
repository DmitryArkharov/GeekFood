//
//  GFButton.swift
//  GeekFood
//
//  Created by dmitry arkharov on 15/06/2024.
//

import SwiftUI

struct GFButton: View {
    
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)    }
}

#Preview {
    GFButton(title: "Generic Title")
}

//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by mert palas on 20.10.2023.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
           //3depth
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            //2light
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
                
            // 1surface
            
            LinearGradient(colors: [
                .customGreenLight,
                .customGreenMedium],
                           startPoint: .top,
                           endPoint: .bottom)
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}

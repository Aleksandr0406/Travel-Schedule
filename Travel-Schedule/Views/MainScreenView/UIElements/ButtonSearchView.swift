//
//  ButtonSearchView.swift
//  Travel-Schedule
//
//  Created by 1111 on 16.05.2025.
//

import SwiftUI

struct ButtonSearchView: View {
    @Binding var path: NavigationPath
    
    var isHidden = false
    
    var body: some View {
        Button("Найти") {
            path.append("CarrierList")
        }
            .frame(width: 150, height: 60)
            .background(.blue)
            .cornerRadius(16)
            .foregroundStyle(.white)
            .font(.system(size: 17, weight: .bold))
            .padding(.top, 16)
            .opacity(isHidden ? 0 : 1)
    }
}

#Preview {
    ButtonSearchView(path: .constant(NavigationPath()))
}

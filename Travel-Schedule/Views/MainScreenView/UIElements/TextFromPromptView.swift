//
//  TextFromPromtView.swift
//  Travel-Schedule
//
//  Created by 1111 on 20.05.2025.
//

import SwiftUI

struct TextFromPromptView: View {
    @Binding var path: NavigationPath
    @Binding var isFromPointSelected: Bool
    
    var body: some View {
        Text("Откуда")
            .font(.system(size: 17, weight: .regular))
            .foregroundStyle(.gray)
            .padding(.leading, 16)
            .frame(width: 259, height: 48, alignment: .leading)
            .onTapGesture {
                isFromPointSelected = true
                path.append("CitiesList")
            }
    }
}

#Preview {
    TextFromPromptView(path: .constant(NavigationPath()), isFromPointSelected: .constant(false))
}

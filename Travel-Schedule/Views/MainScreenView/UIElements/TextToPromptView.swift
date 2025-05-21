//
//  TextToPromtView.swift
//  Travel-Schedule
//
//  Created by 1111 on 20.05.2025.
//

import SwiftUI

struct TextToPromptView: View {
    @Binding var path: NavigationPath
    @Binding var isToPointSelected: Bool
    
    var body: some View {
        Text("Куда")
            .font(.system(size: 17, weight: .regular))
            .foregroundStyle(.gray)
            .padding(.leading, 16)
            .frame(width: 259, height: 48, alignment: .leading)
            .onTapGesture {
                isToPointSelected = true
                path.append("CitiesList")
            }
    }
}

#Preview {
    TextToPromptView(path: .constant(NavigationPath()), isToPointSelected: .constant(false))
}

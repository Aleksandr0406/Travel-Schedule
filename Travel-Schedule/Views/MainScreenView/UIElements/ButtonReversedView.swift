//
//  ButtonReversed.swift
//  Travel-Schedule
//
//  Created by 1111 on 13.05.2025.
//

import SwiftUI

struct ButtonReversedView: View {
    var body: some View {
        Button(action: makeReversed) {
            Image(.changed)
        }
        .frame(width: 36, height: 36)
        .background(.white)
        .cornerRadius(18)
    }
    
    private func makeReversed() {}
}

#Preview {
    ButtonReversedView()
}

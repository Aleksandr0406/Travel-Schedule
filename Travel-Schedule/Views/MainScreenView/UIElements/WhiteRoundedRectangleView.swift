//
//  WhiteRoundedRectangleView.swift
//  Travel-Schedule
//
//  Created by 1111 on 13.05.2025.
//

import SwiftUI

struct WhiteRoundedRectangleView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundStyle(.white)
            .frame(width: 259, height: 96)
    }
}

#Preview {
    WhiteRoundedRectangleView()
}

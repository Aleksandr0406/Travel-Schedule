//
//  BlueRoundedRectangleView.swift
//  Travel-Schedule
//
//  Created by 1111 on 13.05.2025.
//

import SwiftUI

struct BlueRoundedRectangleView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 343, height: 128)
            .foregroundStyle(.blue)
    }
}

#Preview {
    BlueRoundedRectangleView()
}

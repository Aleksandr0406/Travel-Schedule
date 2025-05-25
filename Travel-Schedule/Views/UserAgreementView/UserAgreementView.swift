//
//  UserAgreementView.swift
//  Travel-Schedule
//
//  Created by 1111 on 20.05.2025.
//

import SwiftUI

struct UserAgreementView: View {
    var body: some View {
        Text("Оферта на оказание образовательных услуг дополнительного образования Яндекс.Практикум  для физических лиц")
            .font(.system(size: 24, weight: .bold))
            .toolbarRole(.editor)
            .navigationTitle("Пользовательское соглашение")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
        Spacer()
    }
}

#Preview {
    UserAgreementView()
}

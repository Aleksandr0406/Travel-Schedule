//
//  CarrierInfoView.swift
//  Travel-Schedule
//
//  Created by 1111 on 20.05.2025.
//

import SwiftUI

struct CarrierInfoView: View {
    var body: some View {
        VStack(spacing: 0) {
            Image(.carrierIconInfo)
                .padding([.top, .bottom], 16)
            Text("ОАО ≪РЖД≫")
                .font(.system(size: 24, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 16)
            VStack(spacing: 0) {
                Text("E-mail")
                    .font(.system(size: 17, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("i.lozgkina@yandex.ru")
                    .font(.system(size: 12, weight: .regular))
                    .accentColor(.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(height: 60)
            VStack(spacing: 0) {
                Text("Телефон")
                    .font(.system(size: 17, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("+7(904) 329-27-71")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(height: 60)
            Spacer()
        }
        .padding([.leading, .trailing], 16)
        .toolbarRole(.editor)
        .navigationTitle("Информация о перевозчике")
    }
}

#Preview {
    CarrierInfoView()
}

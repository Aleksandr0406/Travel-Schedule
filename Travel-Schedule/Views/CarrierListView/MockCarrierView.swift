//
//  MockCarrierView.swift
//  Travel-Schedule
//
//  Created by 1111 on 17.05.2025.
//

import SwiftUI

struct MockCarrierView: View, Hashable {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 24)
                .frame(maxWidth: .infinity)
                .frame(height: 104)
                .foregroundStyle(.lightGr)
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Image(.carrierIcon)
                        .frame(width: 38, height: 38)
                        .padding(.trailing, 8)
                    VStack(spacing: 0) {
                        Text("РЖД")
                            .font(.system(size: 17, weight: .regular))
                            .foregroundStyle(.allBlack)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("С пересадкой в Костроме")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundStyle(.red)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    Text("14 января")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.allBlack)
                        .padding(.bottom, 27)
                }
                .padding(EdgeInsets(top: 14, leading: 14, bottom: 0, trailing: 7))
                HStack {
                    Text("22:30")
                        .font(.system(size: 17, weight: .regular))
                        .foregroundStyle(.allBlack)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundStyle(.gray)
                    Text("20 часов")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.allBlack)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundStyle(.gray)
                    Text("08:15")
                        .font(.system(size: 17, weight: .regular))
                        .foregroundStyle(.allBlack)
                }
                .frame(maxWidth: .infinity)
                .padding(.all, 14)
            }
        }
    }
}

#Preview {
    MockCarrierView()
}

//
//  CarrierListView.swift
//  Travel-Schedule
//
//  Created by 1111 on 17.05.2025.
//

import SwiftUI

struct CarrierListView: View {
    @Binding var path: NavigationPath
    
    var mockCarriers: [MockCarrierView] = [MockCarrierView()]
    
    var body: some View {
        VStack(spacing: 0) {
            Text("Москва (Ярославский вокзал) → Санкт Петербург(Балтийский вокзал)")
                .font(.system(size: 24, weight: .bold))
                .accentColor(.black)
                .frame(maxWidth: .infinity)
                .padding([.leading, .trailing], 16)
            List(mockCarriers, id: \.self) { carrier in
                carrier
            }
            .frame(maxWidth: .infinity)
            .listStyle(.plain)
            .padding(.top, 16)
            Button("Уточнить время") {
                path.append("TimeOptions")
            }
            .font(.system(size: 17, weight: .bold))
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .foregroundStyle(.white)
            .background(.blue)
            .cornerRadius(16)
            .padding([.leading, .trailing], 16)
        }
        .toolbarRole(.editor)
        .onTapGesture {
            path.append("CarrierInfo")
        }
    }
}

#Preview {
    CarrierListView(path: .constant(NavigationPath()))
}

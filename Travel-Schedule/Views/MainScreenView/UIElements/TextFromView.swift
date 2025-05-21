//
//  TextFromView.swift
//  Travel-Schedule
//
//  Created by 1111 on 20.05.2025.
//

import SwiftUI

struct TextFromView: View {
    @Binding var path: NavigationPath
    @Binding var cityFrom: String
    @Binding var stationFrom: String
    
    var body: some View {
        Text(cityFrom + " (" + stationFrom + ")")
            .lineLimit(1)
            .font(.system(size: 17, weight: .regular))
            .foregroundStyle(.black)
            .padding(.leading, 16)
            .frame(width: 259, height: 48, alignment: .leading)
            .onTapGesture {
                path.append("CitiesList")
            }
    }
}

#Preview {
    TextFromView(path: .constant(NavigationPath()), cityFrom: .constant(""), stationFrom: .constant(""))
}

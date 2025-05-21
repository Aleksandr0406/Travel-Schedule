//
//  TextToView.swift
//  Travel-Schedule
//
//  Created by 1111 on 20.05.2025.
//

import SwiftUI

struct TextToView: View {
    @Binding var path: NavigationPath
    @Binding var cityTo: String
    @Binding var stationTo: String
    
    var body: some View {
        Text(cityTo + " (" + stationTo + ")")
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
    TextToView(path: .constant(NavigationPath()), cityTo: .constant(""), stationTo: .constant(""))
}

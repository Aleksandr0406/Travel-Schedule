//
//  CityOptionView.swift
//  Travel-Schedule
//
//  Created by 1111 on 12.05.2025.
//

import SwiftUI

struct CitiesListView: View {
    @Binding var path: NavigationPath
    @Binding var isFromPointSelected: Bool
    @Binding var isToPointSelected: Bool
    @Binding var cityFrom: String
    @Binding var cityTo: String
    
    var body: some View {
        VStack(spacing: 0) {
            ListView(path: $path, isFromPointSelected: $isFromPointSelected, isToPointSelected: $isToPointSelected, cityFrom: $cityFrom, cityTo: $cityTo)
        }
        .toolbarRole(.editor)
        .navigationTitle("Выбор города")
    }
}

#Preview {
    CitiesListView(
        path: .constant(NavigationPath()),
        isFromPointSelected: .constant(false),
        isToPointSelected: .constant(false),
        cityFrom: .constant(""),
        cityTo: .constant("")
    )
}


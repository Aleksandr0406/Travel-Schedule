//
//  StationsListView.swift
//  Travel-Schedule
//
//  Created by 1111 on 14.05.2025.
//

import SwiftUI

struct StationsListView: View {
    @Binding var path: NavigationPath
    @Binding var isFromPointSelected: Bool
    @Binding var isToPointSelected: Bool
    @Binding var stationFrom: String
    @Binding var stationTo: String
    @State private var searchTextField: String = ""
    
    var city: String
    
    var body: some View {
        VStack(spacing: 0) {
            if city == "Москва" { MSKStationsView(
                path: $path,
                isFromPointSelected: $isFromPointSelected,
                isToPointSelected: $isToPointSelected,
                stationFrom: $stationFrom,
                stationTo: $stationTo
            ) }
            if city == "Санкт-Петербург" { SPBStationsView(
                path: $path,
                isFromPointSelected: $isFromPointSelected,
                isToPointSelected: $isToPointSelected,
                stationFrom: $stationFrom,
                stationTo: $stationTo
            ) }
        }
        .toolbarRole(.editor)
        .navigationTitle("Выбор станции")
    }
}

#Preview {
    StationsListView(
        path: .constant(NavigationPath()),
        isFromPointSelected: .constant(false),
        isToPointSelected: .constant(false),
        stationFrom: .constant(""),
        stationTo: .constant(""),
        city: ""
    )
}

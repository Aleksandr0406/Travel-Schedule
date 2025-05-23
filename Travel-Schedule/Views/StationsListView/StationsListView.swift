//
//  StationsListView.swift
//  Travel-Schedule
//
//  Created by 1111 on 14.05.2025.
//

import SwiftUI

struct StationsListView: View {
    @State private var searchTextField: String = ""
    
    @Binding var stateProperty: StateProperties
    
    var city: String
    
    var body: some View {
        VStack(spacing: 0) {
            if city == "Москва" {
                MSKStationsView(stateProperty: $stateProperty, city: city)
            }
            if city == "Санкт-Петербург" {
                SPBStationsView(stateProperty: $stateProperty, city: city)
            }
        }
        .toolbarRole(.editor)
        .navigationTitle("Выбор станции")
    }
}

#Preview {
    StationsListView(stateProperty: .constant(StateProperties()), city: "")
}

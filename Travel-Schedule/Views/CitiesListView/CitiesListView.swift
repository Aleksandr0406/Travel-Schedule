//
//  CityOptionView.swift
//  Travel-Schedule
//
//  Created by 1111 on 12.05.2025.
//

import SwiftUI

struct CitiesListView: View {
    @Binding var stateProperty: StateProperties
    
    var body: some View {
        VStack(spacing: 0) {
            CitiesOptionView(stateProperty: $stateProperty)
        }
        .toolbarRole(.editor)
        .navigationTitle("Выбор города")
    }
}

private struct CitiesOptionView: View {
    @State private var searchCities = ""
    @Binding var stateProperty: StateProperties
    
    private let mockCities: [String] = [
        "Москва",
        "Санкт-Петербург",
        "Сочи",
        "Горный воздух",
        "Краснодар",
        "Казань",
        "Омск"
    ]
    
    private var filteredCities: [String] {
        guard !searchCities.isEmpty else { return mockCities}
        return mockCities.filter { $0.localizedCaseInsensitiveContains((searchCities)) }
    }
    
    var body: some View {
        VStack {
            if filteredCities.isEmpty {
                Text("Город не найден")
                    .font(.system(size: 24, weight: .bold))
            } else {
                ListView(filteredCities: filteredCities, stateProperty: $stateProperty)
                    .listStyle(.plain)
            }
        }
        .searchable(
            text: $searchCities,
            placement: .navigationBarDrawer(displayMode: .always),
            prompt: "Введите запрос"
        )
    }
}

private struct ListView: View {
    var filteredCities: [String]
    @Binding var stateProperty: StateProperties
    
    var body: some View {
        List(filteredCities, id: \.self) { city in
            HStack {
                Text(city)
                    .frame(height: 40)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.darkWhite)
            }
            .listRowSeparator(.hidden)
            .onTapGesture {
                stateProperty.path.append(city)
            }
        }
    }
}

#Preview {
    CitiesListView(stateProperty: .constant(StateProperties()))
}


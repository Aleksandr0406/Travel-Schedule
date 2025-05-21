//
//  ListView.swift
//  Travel-Schedule
//
//  Created by 1111 on 20.05.2025.
//

import SwiftUI

struct ListView: View {
    @State private var searchCities = ""
    @Binding var path: NavigationPath
    @Binding var isFromPointSelected: Bool
    @Binding var isToPointSelected: Bool
    @Binding var cityFrom: String
    @Binding var cityTo: String
    
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
                        if isFromPointSelected && isToPointSelected == false {
                            cityFrom = city
                        }
                        if isToPointSelected {
                            cityTo = city
                        }
                        path.append(city)
                    }
                }
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

#Preview {
    ListView(
        path: .constant(NavigationPath()),
        isFromPointSelected: .constant(false),
        isToPointSelected: .constant(false),
        cityFrom: .constant(""),
        cityTo: .constant("")
    )
}

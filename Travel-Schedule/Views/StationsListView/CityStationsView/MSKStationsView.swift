//
//  MoskowStationsView.swift
//  Travel-Schedule
//
//  Created by 1111 on 14.05.2025.
//

import SwiftUI

struct MSKStationsView: View {
    @State private var searchStations = ""
    @Binding var stateProperty: StateProperties
    
    private let mockCitiesStationsMSK: [String] = ["Киевский вокзал"]
    var city: String
    
    var filteredStations: [String] {
        guard !searchStations.isEmpty else { return mockCitiesStationsMSK }
        return mockCitiesStationsMSK.filter { $0.localizedCaseInsensitiveContains((searchStations)) }
    }
    
    var body: some View {
        VStack {
            if filteredStations.isEmpty {
                Text("Город не найден")
                    .font(.system(size: 24, weight: .bold))
            } else {
                List(filteredStations, id: \.self) { station in
                    HStack {
                        Text(station)
                            .frame(height: 40)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.darkWhite)
                    }
                    .listRowSeparator(.hidden)
                    .onTapGesture {
                        if stateProperty.isFromPointSelected && stateProperty.isToPointSelected == false {
                            stateProperty.cityFrom = city
                            stateProperty.stationFrom = station
                            stateProperty.isFromPointSelected = false
                            stateProperty.isFromPointShow = true
                        }
                        
                        if stateProperty.isFromPointSelected == false && stateProperty.isToPointSelected {
                            stateProperty.cityTo = city
                            stateProperty.stationTo = station
                            stateProperty.isToPointSelected = false
                            stateProperty.isToPointShow = true
                        }
                        
                        stateProperty.path.removeLast(stateProperty.path.count)
                    }
                }
                .listStyle(.plain)
            }
        }
        .searchable(
            text: $searchStations,
            placement: .navigationBarDrawer(displayMode: .always),
            prompt: "Введите запрос"
        )
    }
}

#Preview {
    MSKStationsView(stateProperty: .constant(StateProperties()), city: "")
}

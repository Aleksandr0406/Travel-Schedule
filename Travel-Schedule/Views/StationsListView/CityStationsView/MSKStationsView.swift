//
//  MoskowStationsView.swift
//  Travel-Schedule
//
//  Created by 1111 on 14.05.2025.
//

import SwiftUI

struct MSKStationsView: View {
    @State private var searchStations = ""
    @Binding var path: NavigationPath
    @Binding var isFromPointSelected: Bool
    @Binding var isToPointSelected: Bool
    @Binding var stationFrom: String
    @Binding var stationTo: String
    
    let mockCitiesStationsMSK: [String] = ["Киевский вокзал"]
    
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
                    .onTapGesture {
                        if isFromPointSelected && isToPointSelected == false {
                            stationFrom = station
                        }
                        if isToPointSelected {
                            stationTo = station
                        }
                        path.removeLast(path.count)
                    }
                    .listRowSeparator(.hidden)
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
    MSKStationsView(
        path: .constant(NavigationPath()),
        isFromPointSelected: .constant(false),
        isToPointSelected: .constant(false),
        stationFrom: .constant(""),
        stationTo: .constant("")
    )
}

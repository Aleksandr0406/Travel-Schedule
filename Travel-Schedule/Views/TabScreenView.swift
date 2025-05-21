//
//  MainScreenView.swift
//  Travel-Schedule
//
//  Created by 1111 on 11.05.2025.
//

import SwiftUI

struct TabScreenView: View {
    @State var colorScheme: ColorScheme = .light
    @State var path = NavigationPath()
    @State var isFromPointSelected: Bool = false
    @State var isToPointSelected: Bool = false
    @State var cityFrom: String = "Откуда"
    @State var cityTo: String = "Куда"
    @State var stationFrom: String = ""
    @State var stationTo: String = ""
    
    var body: some View {
        NavigationStack(path: $path) {
            TabView {
                MainScreenView(colorScheme: $colorScheme, path: $path, isFromPointSelected: $isFromPointSelected, isToPointSelected: $isToPointSelected, cityFrom: $cityFrom, cityTo: $cityTo, stationFrom: $stationFrom, stationTo: $stationTo)
                    .tabItem {
                        Image(.main)
                            .renderingMode(.template)
                    }
                    .toolbarBackground(.visible, for: .tabBar)
                SettingsView(path: $path, colorScheme: $colorScheme)
                    .tabItem {
                        Image(.options)
                            .renderingMode(.template)
                    }
                    .toolbarBackground(.visible, for: .tabBar)
            }
            .accentColor(.darkWhite)
            .navigationDestination(for: String.self) { value in
                if value == "CitiesList" {
                    CitiesListView(path: $path, isFromPointSelected: $isFromPointSelected, isToPointSelected: $isToPointSelected, cityFrom: $cityFrom, cityTo: $cityTo)
                } else if value == "CarrierList" {
                    CarrierListView(path: $path)
                } else if value == "TimeOptions" {
                    TimeOptionsView()
                } else if value == "CarrierInfo" {
                    CarrierInfoView()
                } else if value == "UserAgreement" {
                    UserAgreementView()
                } else {
                    StationsListView(path: $path, isFromPointSelected: $isFromPointSelected, isToPointSelected: $isToPointSelected, stationFrom: $stationFrom, stationTo: $stationTo, city: value)
                }
            }
        }
        .accentColor(.darkWhite)
        .environment(\.colorScheme, colorScheme)
    }
}

#Preview {
    TabScreenView()
}

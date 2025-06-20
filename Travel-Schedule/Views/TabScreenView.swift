//
//  MainScreenView.swift
//  Travel-Schedule
//
//  Created by 1111 on 11.05.2025.
//

import SwiftUI

struct TabScreenView: View {
    @State private var stateProperty: StateProperties = StateProperties()
    
    var body: some View {
        NavigationStack(path: $stateProperty.path) {
            TabView {
                MainScreenView(stateProperty: $stateProperty)
                    .tabItem {
                        Image(.main)
                            .renderingMode(.template)
                    }
                    .toolbarBackground(.visible, for: .tabBar)
                SettingsView(stateProperty: $stateProperty)
                    .tabItem {
                        Image(.options)
                            .renderingMode(.template)
                    }
                    .toolbarBackground(.visible, for: .tabBar)
            }
            .accentColor(.darkWhite)
            .navigationDestination(for: String.self) { value in
                if value == "CitiesList" {
                    CitiesListView(stateProperty: $stateProperty)
                } else if value == "CarrierList" {
                    CarrierListView(stateProperty: $stateProperty)
                } else if value == "TimeOptions" {
                    TimeOptionsView()
                } else if value == "CarrierInfo" {
                    CarrierInfoView()
                } else if value == "UserAgreement" {
                    UserAgreementView()
                } else {
                    StationsListView(stateProperty: $stateProperty, city: value)
                }
            }
        }
        .accentColor(.darkWhite)
        .environment(\.colorScheme, stateProperty.colorScheme)
    }
}

#Preview {
    TabScreenView()
}

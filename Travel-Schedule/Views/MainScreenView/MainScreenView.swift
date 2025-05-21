//
//  File.swift
//  Travel-Schedule
//
//  Created by 1111 on 12.05.2025.
//
import SwiftUI

struct MainScreenView: View {
    @Binding var colorScheme: ColorScheme
    @Binding var path: NavigationPath
    @Binding var isFromPointSelected: Bool
    @Binding var isToPointSelected: Bool
    @Binding var cityFrom: String
    @Binding var cityTo: String
    @Binding var stationFrom: String
    @Binding var stationTo: String
    
    var body: some View {
        VStack {
            ZStack {
                BlueRoundedRectangleView()
                HStackElementsView(
                    path: $path,
                    isFromPointSelected: $isFromPointSelected,
                    isToPointSelected: $isToPointSelected,
                    cityFrom: $cityFrom,
                    cityTo: $cityTo,
                    stationFrom: $stationFrom,
                    stationTo: $stationTo
                )
            }
            .frame(width: 311, height: 96)
            .padding(.top, 208)
            ButtonSearchView(path: $path)
            Spacer()
        }
    }
}

#Preview {
    MainScreenView(
        colorScheme: .constant(.light),
        path: .constant(NavigationPath()),
        isFromPointSelected: .constant(false),
        isToPointSelected: .constant(false),
        cityFrom: .constant(""),
        cityTo: .constant(""),
        stationFrom: .constant(""),
        stationTo: .constant("")
    )
}



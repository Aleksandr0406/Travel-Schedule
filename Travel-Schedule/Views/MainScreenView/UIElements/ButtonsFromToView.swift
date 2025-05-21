//
//  ButtonsFromToView.swift
//  Travel-Schedule
//
//  Created by 1111 on 13.05.2025.
//

import SwiftUI

struct ButtonsFromToView: View {
    @Binding var path: NavigationPath
    @Binding var isFromPointSelected: Bool
    @Binding var isToPointSelected: Bool
    @Binding var cityFrom: String
    @Binding var cityTo: String
    @Binding var stationFrom: String
    @Binding var stationTo: String
    
    var body: some View {
        VStack(spacing: 0) {
            if isFromPointSelected {
                TextFromView(
                    path: $path,
                    cityFrom: $cityFrom,
                    stationFrom: $stationFrom
                )
            } else {
                TextFromPromptView(
                    path: $path,
                    isFromPointSelected: $isFromPointSelected
                )
            }
            
            if isToPointSelected {
                TextToView(
                    path: $path,
                    cityTo: $cityTo,
                    stationTo: $stationTo
                )
            } else {
                TextToPromptView(
                    path: $path,
                    isToPointSelected: $isToPointSelected
                )
            }
        }
    }
}

#Preview {
    ButtonsFromToView(
        path: .constant(NavigationPath()),
        isFromPointSelected: .constant(false),
        isToPointSelected: .constant(false),
        cityFrom: .constant(""),
        cityTo: .constant(""),
        stationFrom: .constant(""),
        stationTo: .constant("")
        )
}

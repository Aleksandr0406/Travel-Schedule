//
//  HStackElementsView.swift
//  Travel-Schedule
//
//  Created by 1111 on 13.05.2025.
//

import SwiftUI

struct HStackElementsView: View {
    @Binding var path: NavigationPath
    @Binding var isFromPointSelected: Bool
    @Binding var isToPointSelected: Bool
    @Binding var cityFrom: String
    @Binding var cityTo: String
    @Binding var stationFrom: String
    @Binding var stationTo: String
    
    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                WhiteRoundedRectangleView()
                ButtonsFromToView(
                    path: $path,
                    isFromPointSelected: $isFromPointSelected,
                    isToPointSelected: $isToPointSelected,
                    cityFrom: $cityFrom,
                    cityTo: $cityTo,
                    stationFrom: $stationFrom,
                    stationTo: $stationTo)
            }
            .frame(width: 259, height: 96)
            ButtonReversedView()
        }
    }
}

#Preview {
    HStackElementsView(
        path: .constant(NavigationPath()),
        isFromPointSelected: .constant(false),
        isToPointSelected: .constant(false),
        cityFrom: .constant(""),
        cityTo: .constant(""),
        stationFrom: .constant(""),
        stationTo: .constant("")
    )
}

//
//  File.swift
//  Travel-Schedule
//
//  Created by 1111 on 12.05.2025.
//
import SwiftUI

struct MainScreenView: View {
    @State private var tabSelection: Int = 0
    @State private var indexOfGroupStories: Int = 0
    @State private var indexesOfViewStories: [Int] = []
    @Binding var stateProperty: StateProperties
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    MiniStoriesView(
                        tabSelection: $tabSelection,
                        indexOfGroupStories: $indexOfGroupStories,
                        indexesOfViewStories: $indexesOfViewStories,
                        stateProperty: $stateProperty
                    )
                    .fullScreenCover(isPresented: $stateProperty.isPresentingStory) {
                        StoriesView(
                            indexOfGroupStories: $indexOfGroupStories,
                            stateProperty: $stateProperty,
                            tabSelection: $tabSelection
                        )
                    }
                }
                .frame(height: 140)
                .padding(.leading, 16)
            }
            ZStack {
                BlueRoundedRectangleView()
                HStackElementsView(stateProperty: $stateProperty)
            }
            .frame(width: 311, height: 96)
            .padding(.top, 44)
            ButtonSearchView(stateProperty: $stateProperty)
            Spacer()
        }
    }
}

private struct MiniStoriesView: View {
    @Binding var tabSelection: Int
    @Binding var indexOfGroupStories: Int
    @Binding var indexesOfViewStories: [Int]
    @Binding var stateProperty: StateProperties
    
    private let storiesThemes: [UIImage] = [
        UIImage(resource: .mainTheme1),
        UIImage(resource: .mainTheme2),
        UIImage(resource: .mainTheme3)
    ]
    
    var body: some View {
        ForEach(0..<storiesThemes.count, id: \.self) { index in
            let isStoryViewed = indexesOfViewStories.contains(index)
            Image(uiImage: storiesThemes[index])
                .frame(width: 92)
                .clipShape(.rect(cornerRadius: 16))
                .overlay(RoundedRectangle(cornerRadius: 16).strokeBorder(.blue, lineWidth: isStoryViewed ? 0 : 4))
                .opacity(isStoryViewed ? 0.5 : 1)
                .onTapGesture {
                    indexOfGroupStories = index
                    indexesOfViewStories.append(indexOfGroupStories)
                    tabSelection = index
                    stateProperty.isPresentingStory = true
                }
        }
    }
}

private struct BlueRoundedRectangleView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 343, height: 128)
            .foregroundStyle(.blue)
    }
}

private struct HStackElementsView: View {
    @Binding var stateProperty: StateProperties
    
    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                WhiteRoundedRectangleView()
                ButtonsFromToView(stateProperty: $stateProperty)
            }
            .frame(width: 259, height: 96)
            ButtonReversedView(stateProperty: $stateProperty)
        }
    }
}

private struct WhiteRoundedRectangleView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundStyle(.white)
            .frame(width: 259, height: 96)
    }
}

private struct ButtonsFromToView: View {
    @Binding var stateProperty: StateProperties
    
    var body: some View {
        VStack(spacing: 0) {
            TextFromView(stateProperty: $stateProperty)
            TextToView(stateProperty: $stateProperty)
        }
    }
}

private struct TextFromView: View {
    @Binding var stateProperty: StateProperties
    
    private var finalDestination: String {
        return stateProperty.cityFrom + " (" + stateProperty.stationFrom + ")"
    }
    
    var body: some View {
        Text(stateProperty.isFromPointShow ? finalDestination : "Откуда")
            .lineLimit(1)
            .font(.system(size: 17, weight: .regular))
            .foregroundStyle(stateProperty.isFromPointShow  ? .black : .gray)
            .padding(.leading, 16)
            .frame(width: 259, height: 48, alignment: .leading)
            .onTapGesture {
                stateProperty.isFromPointSelected = true
                stateProperty.path.append("CitiesList")
            }
    }
}

private struct TextToView: View {
    @Binding var stateProperty: StateProperties
    
    private var finalDestination: String {
        return stateProperty.cityTo + " (" + stateProperty.stationTo + ")"
    }
    
    var body: some View {
        Text(stateProperty.isToPointShow ? finalDestination : "Куда")
            .lineLimit(1)
            .font(.system(size: 17, weight: .regular))
            .foregroundStyle(stateProperty.isToPointShow ? .black : .gray)
            .padding(.leading, 16)
            .frame(width: 259, height: 48, alignment: .leading)
            .onTapGesture {
                stateProperty.isToPointSelected = true
                stateProperty.path.append("CitiesList")
            }
    }
}

private struct ButtonReversedView: View {
    @Binding var stateProperty: StateProperties
    
    @State private var cityHelp: String = ""
    @State private var stationHelp: String = ""
    
    var body: some View {
        Button(action: swapDestinations) {
            Image(.changed)
        }
        .frame(width: 36, height: 36)
        .background(.white)
        .cornerRadius(18)
    }
    
    private func swapDestinations() {
        cityHelp = stateProperty.cityFrom
        stationHelp = stateProperty.stationFrom
        stateProperty.cityFrom = stateProperty.cityTo
        stateProperty.stationFrom = stateProperty.stationTo
        stateProperty.cityTo = cityHelp
        stateProperty.stationTo = stationHelp
    }
}

private struct ButtonSearchView: View {
    @Binding var stateProperty: StateProperties
    
    var isHidden = false
    
    var body: some View {
        Button("Найти") {
            stateProperty.path.append("CarrierList")
        }
        .frame(width: 150, height: 60)
        .background(.blue)
        .cornerRadius(16)
        .foregroundStyle(.white)
        .font(.system(size: 17, weight: .bold))
        .padding(.top, 16)
        .opacity(isHidden ? 0 : 1)
    }
}

#Preview {
    MainScreenView(stateProperty: .constant(StateProperties()))
}



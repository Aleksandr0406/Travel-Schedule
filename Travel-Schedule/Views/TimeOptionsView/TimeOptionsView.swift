//
//  TimeOptionsView.swift
//  Travel-Schedule
//
//  Created by 1111 on 19.05.2025.
//

import SwiftUI

struct TimeOptionsView: View {
    @State private var isTransferOptionYesSelect: Bool = false
    @State private var isTransferOptionNoSelect: Bool = false
    @State private var shouldHide: Bool = true
    
    var body: some View {
        VStack {
            Text("Время отправления")
                .font(.system(size: 24, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
            MorningTimeView()
            DayTimeView()
            EveningTimeView()
            NightTimeView()
            Text("Показывать варианты с пересадками")
                .font(.system(size: 24, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
            TransferYesView(isTransferOptionYesSelect: $isTransferOptionYesSelect, isTransferOptionNoSelect: $isTransferOptionNoSelect)
            TransferNoView(isTransferOptionYesSelect: $isTransferOptionYesSelect, isTransferOptionNoSelect: $isTransferOptionNoSelect)
        }
        .padding([.leading, .trailing], 16)
        Spacer()
        Button("Применить") {}
            .font(.system(size: 17, weight: .bold))
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, maxHeight: 60)
            .background(.blue)
            .cornerRadius(16)
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 24, trailing: 16))
            .opacity(shouldHide ? 0 : 1)
            .toolbarRole(.editor)
    }
}

private struct MorningTimeView: View {
    @State private var isMorningTimeSelect: Bool = false
    
    var body: some View {
        HStack {
            Text("Утро 06:00 - 12:00")
                .font(.system(size: 17, weight: .regular))
            Spacer()
            Image(isMorningTimeSelect ? .checked : .transferOptionSquare)
                .frame(width: 24, height: 24)
                .onTapGesture {
                    isMorningTimeSelect.toggle()
                }
        }
        .frame(height: 60)
    }
}

private struct DayTimeView: View {
    @State private var isDayTimeSelect: Bool = false
    
    var body: some View {
        HStack {
            Text("День 12:00 - 18:00")
                .font(.system(size: 17, weight: .regular))
            Spacer()
            Image(isDayTimeSelect ? .checked : .transferOptionSquare)
                .frame(width: 24, height: 24)
                .onTapGesture {
                    isDayTimeSelect.toggle()
                }
        }
        .frame(height: 60)
    }
}

private struct EveningTimeView: View {
    @State private var isEveningTimeSelect: Bool = false
    
    var body: some View {
        HStack {
            Text("Вечер 18:00 - 00:00")
                .font(.system(size: 17, weight: .regular))
            Spacer()
            Image(isEveningTimeSelect ? .checked : .transferOptionSquare)
                .frame(width: 24, height: 24)
                .onTapGesture {
                    isEveningTimeSelect.toggle()
                }
        }
        .frame(height: 60)
    }
}

private struct NightTimeView: View {
    @State private var isNightTimeSelect: Bool = false
    
    var body: some View {
        HStack {
            Text("Ночь 00:00 - 06:00")
                .font(.system(size: 17, weight: .regular))
            Spacer()
            Image(isNightTimeSelect ? .checked : .transferOptionSquare)
                .frame(width: 24, height: 24)
                .onTapGesture {
                    isNightTimeSelect.toggle()
                }
        }
        .frame(height: 60)
    }
}

private struct TransferYesView: View {
    @Binding var isTransferOptionYesSelect: Bool
    @Binding var isTransferOptionNoSelect: Bool
    
    var body: some View {
        HStack {
            Text("Да")
                .font(.system(size: 17, weight: .regular))
            Spacer()
            Image(isTransferOptionYesSelect ? .transferOptionCheck : .transferOptionCircle)
                .frame(width: 24, height: 24)
                .onTapGesture {
                    if isTransferOptionYesSelect == false && isTransferOptionNoSelect == false {
                        isTransferOptionYesSelect.toggle()
                    }
                    if isTransferOptionNoSelect == true {
                        isTransferOptionYesSelect.toggle()
                        isTransferOptionNoSelect.toggle()
                    }
                }
        }
        .frame(height: 60)
    }
}

private struct TransferNoView: View {
    @Binding var isTransferOptionYesSelect: Bool
    @Binding var isTransferOptionNoSelect: Bool
    
    var body: some View {
        HStack {
            Text("Нет")
                .font(.system(size: 17, weight: .regular))
            Spacer()
            Image(isTransferOptionNoSelect ? .transferOptionCheck : .transferOptionCircle)
                .frame(width: 24, height: 24)
                .onTapGesture {
                    if isTransferOptionYesSelect == false && isTransferOptionNoSelect == false {
                        isTransferOptionNoSelect.toggle()
                    }
                    if isTransferOptionYesSelect == true {
                        isTransferOptionNoSelect.toggle()
                        isTransferOptionYesSelect.toggle()
                    }
                }
        }
        .frame(height: 60)
    }
}

#Preview {
    TimeOptionsView()
}

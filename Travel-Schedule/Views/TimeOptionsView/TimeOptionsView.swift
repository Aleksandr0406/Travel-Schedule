//
//  TimeOptionsView.swift
//  Travel-Schedule
//
//  Created by 1111 on 19.05.2025.
//

import SwiftUI

struct TimeOptionsView: View {
    @State var isMorningTimeSelect: Bool = false
    @State var isDayTimeSelect: Bool = false
    @State var isEveningTimeSelect: Bool = false
    @State var isNightTimeSelect: Bool = false
    @State var isTransferOptionYesSelect: Bool = false
    @State var isTransferOptionNoSelect: Bool = false
    @State var shouldHide: Bool = true
    
    var body: some View {
        VStack {
            Text("Время отправления")
                .font(.system(size: 24, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
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
            Text("Показывать варианты с пересадками")
                .font(.system(size: 24, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
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

#Preview {
    TimeOptionsView()
}

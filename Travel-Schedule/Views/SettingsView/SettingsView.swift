//
//  SettingsView.swift
//  Travel-Schedule
//
//  Created by 1111 on 20.05.2025.
//

import SwiftUI

struct SettingsView: View {
    @Binding var path: NavigationPath
    @State var isEnabled: Bool = false
    @Binding var colorScheme: ColorScheme
    
    var body: some View {
        VStack {
            HStack {
                Text("Темная тема")
                    .font(.system(size: 17, weight: .regular))
                    .frame(maxWidth: .infinity,maxHeight: 60, alignment: .leading)
                Spacer()
                Toggle("", isOn: $isEnabled)
                    .onChange(of: isEnabled)
                {
                    colorScheme = isEnabled ? .dark : .light
                }
            }
            .padding([.leading, .trailing], 16)
            HStack {
                Text("Пользовательское соглашение")
                    .font(.system(size: 17, weight: .regular))
                    .frame(maxWidth: .infinity,maxHeight: 60, alignment: .leading)
                Spacer()
                Image(systemName: "chevron.right")
            }
            .onTapGesture {
                path.append("UserAgreement")
            }
            .padding(.leading, 16)
            .padding(.trailing, 18)
            Spacer()
            Text("Приложение использует API «Яндекс.Расписания»\nВерсия 1.0 (beta)")
                .font(.system(size: 12, weight: .regular))
                .multilineTextAlignment(.center)
                .lineSpacing(16)
                .padding(.bottom, 24)
        }
    }
}

#Preview {
    SettingsView(path: .constant(NavigationPath()), colorScheme: .constant(.light))
}

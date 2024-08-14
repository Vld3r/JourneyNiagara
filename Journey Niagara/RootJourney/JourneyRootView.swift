//
//  JourneyRootView.swift
//  Journey Niagara
//
//  Created by Nicolae Chivriga on 13/08/2024.
//

import Foundation
import SwiftUI

struct JourneyRootView: View {
    @StateObject private var journeyRoot: RootJounerClass = RootJounerClass()
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.init(hex: "#1C5839"), Color.init(hex: "#3CBE7B")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Group {
                    switch self.journeyRoot.view {
                    case .menu:
                        GaraMenuView()
                    case .hotSummer:
                        HotSummerView()
                    case .areaHotels:
                        AreaHoletsView()
                    case .quest:
                        QuestView()
                    case .settings:
                        SettingsView()
                    }
                }
                .transition(.scale)
                
            }
        }
        .environmentObject(self.journeyRoot)
    }
}

extension Font {
    static var ramaraja = "Ramaraja"
}

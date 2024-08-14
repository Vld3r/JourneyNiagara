//
//  GaraMenuView.swift
//  Journey Niagara
//
//  Created by Nicolae Chivriga on 13/08/2024.
//

import Foundation
import SwiftUI

struct GaraMenuView: View {
    @EnvironmentObject private var nigRt: RootJounerClass
    var body: some View {
        VStack {
                Image("mone")
                .background {
//                    Image(
                }
            
            VStack(spacing: 30) {
                NigBtn(text: "HOT SUMMER FUN") {
                    self.nigRt.view = .hotSummer
                }
                
                NigBtn(text: "AREA HOTELS") {
                    self.nigRt.view = .areaHotels
                }
                
                NigBtn(text: "QUEST") {
                    self.nigRt.view = .quest
                }
                
                NigBtn(text: "SETTINGS") {
                    self.nigRt.view = .settings
                }
            }
            .padding(.top, 30)
            
            Spacer()
        }
    }
}

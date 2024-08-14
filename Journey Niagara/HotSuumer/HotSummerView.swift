//
//  HotSummerView.swift
//  Journey Niagara
//
//  Created by Nicolae Chivriga on 13/08/2024.
//

import Foundation
import SwiftUI

struct  HotSummerView: View {
    
    @EnvironmentObject private var rootV: RootJounerClass
    @StateObject private var hotSummerCls: HotSummerCls = HotSummerCls()
    
    var body: some View {
        
        ZStack {
            VStack {
                HStack {
                    BekNigView {
                        if self.hotSummerCls.infoPresented == nil {
                            rootV.view = .menu
                        } else {
                            self.hotSummerCls.infoPresented = nil
                        }
                       
                    }
                    Spacer()
                }
                .padding(.horizontal)
                
                if self.hotSummerCls.infoPresented == nil {
                    HStack {
                        Text("Hot Summer Fun")
                            .font(.custom(Font.ramaraja, size: 30))
                            .foregroundStyle(Color.init(hex: "#FFC20E"))
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                }
                Spacer()
            }
            VStack(spacing: 19) {
                Group {
                    if self.hotSummerCls.infoPresented == nil {
                        ForEach(HotSummerInfo.allCases, id: \.id) { info in
                            NigBtn(text: info.rawValue) {
                                
                                self.hotSummerCls.infoPresented = info
                            }
                        }
                    } else {
                        
                        switch self.hotSummerCls.infoPresented! {
                        case .MONDAY:
                            ViewInfoHo(
                                       image: "h1",
                                       text1: "INSTANT WIN MONDAYS",
                                       text2: "at Fallsview Resort",
                                       text3: "& Niagara",
                                       text4: "11AM - 7PM")
                        case .TUESDAYS:
                            ViewInfoHo(
                                       image: "h2",
                                       text1: "NIAGARA'S PLAY N' GO",
                                       text2: "SLOT TOURNAMENT at",
                                       text3: "Niagara",
                                       text4: "11:30AM - 7PM")
                        case .WEDNESDAYS:
                            ViewInfoHo(
                                       image: "h3",
                                       text1: "GRILL & CHILL at Casino",
                                       text2: "NIAGARA",
                                       text3: "",
                                       text4: "3PM - 7PM")
                        case .FRIDAYS:
                            ViewInfoHo(
                                       image: "h4",
                                       text1: "FRIDAY NIGHT FRENZY at",
                                       text2: "Casino Niagara",
                                       text3: "",
                                       text4: "7PM-10PM")
                        case .SUNDAYS:
                            ViewInfoHo(
                                       image: "h5",
                                       text1: "HOT SUMMER GIVEAWAY at",
                                       text2: "Niagara & Fallsview Resort",
                                       text3: "",
                                       text4: "1PM - 4PM")
                        }
                    }
                    
                    
                }
                .transition(.scale)
            }
        }
        .environmentObject(self.hotSummerCls)
    }
}

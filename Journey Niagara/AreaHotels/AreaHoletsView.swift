//
//  AreaHoletsView.swift
//  Journey Niagara
//
//  Created by Nicolae Chivriga on 13/08/2024.
//

import Foundation
import SwiftUI

struct AreaHoletsView: View {
    @EnvironmentObject private var rootV: RootJounerClass
    @State var hotelCase: HotelsCases?
    var body: some View {
        ZStack {
            
            Group {
                if self.hotelCase == nil {
                    VStack(spacing: 5) {
                        HStack {
                            BekNigView {
                                if self.hotelCase == nil {
                                    rootV.view = .menu
                                } else {
                                    self.hotelCase = nil
                                }
                                
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        if self.hotelCase == nil {
                            HStack {
                                Text("Area Hotels")
                                    .font(.custom(Font.ramaraja, size: 30))
                                    .foregroundStyle(Color.init(hex: "#FFC20E"))
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                        
                        
                        ScrollView(showsIndicators: false) {
                            VStack(spacing: 25) {
                                ForEach(HotelsCases.allCases) { hotel in
                                    MnHot(hotelCase: hotel)
                                        .onTapGesture {
                                            withAnimation {
                                                self.hotelCase = hotel
                                            }
                                        }
                                }
                            }
                        }

                        Spacer()
                    }
                    
                } else {
                 
                        
                            VStack {
                                HStack {
                                    BekNigView {
                                        if self.hotelCase == nil {
                                            rootV.view = .menu
                                        } else {
                                            self.hotelCase = nil
                                        }
                                        
                                    }
                                    Spacer()
                                }
                                .padding(.horizontal)
                                ScrollView(showsIndicators: false) {
                                if let hotelcase = hotelCase {
                                    VStack {
                                        Text(hotelcase.text)
                                            .foregroundStyle(Color.init(hex: "#FFC20E"))
                                            .font(.custom(Font.ramaraja, size: 30))
                                            .padding(.top)
                                        
                                        Image(hotelcase.rawValue)
                                            .resizable()
                                            .frame(width: 309, height: 201)
                                        
                                        Text(hotelcase.longText)
                                            .font(.custom(Font.ramaraja, size: 18))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                    }
                                    .background(Color.init(hex: "#2D2D2D").opacity(0.59))
                                    .cornerRadius(20)
                                    .frame(width: 353)
                                
                                }
                                Spacer()
                            }
                                
                        }
                    
                }
            }
            .transition(.scale)
        }
    }
}

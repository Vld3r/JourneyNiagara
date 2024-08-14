//
//  SettingsView.swift
//  Journey Niagara
//
//  Created by Nicolae Chivriga on 13/08/2024.
//

import Foundation
import SwiftUI
import StoreKit



struct SettingsView: View {
    @EnvironmentObject private var rootV: RootJounerClass
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    BekNigView {
                            rootV.view = .menu
                    }
                    
                    Spacer()
                }               
                .padding(.horizontal)

                Spacer()
            }
            VStack {
                Button(action: {
                    guard let currentScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
                          print("UNABLE TO GET CURRENT SCENE")
                          return
                    }
                         
                    // show review dialog
                    SKStoreReviewController.requestReview(in: currentScene)
                }, label: {
                    NigBtn(text: "RATE US") {
                        // try getting current scene
                     
                    }
                    .disabled(true)
                })
            
            }
        }
        
    }
}

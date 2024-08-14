//
//  ViewInfoHo.swift
//  Journey Niagara
//
//  Created by Nicolae Chivriga on 13/08/2024.
//

import Foundation
import SwiftUI

struct ViewInfoHo: View {
    @EnvironmentObject private var hotSummerCls: HotSummerCls
    let image: String
    
    let text1: String
    let text2: String
    let text3: String
    let text4: String
    var body: some View {
        VStack {
            if let hotSummer = hotSummerCls.infoPresented {
                Text(hotSummer.rawValue)
                    .font(.custom(Font.ramaraja, size: 30))
                    .foregroundStyle(Color.init(hex: "#FFC20E"))
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.init(hex: "#2D2D2D").opacity(0.5))
                    .overlay {
                        VStack {
                            Image(image)
                                .padding(.top)
                            
                            VStack(spacing: 20) {
                                
                                Text(text1)
                                    .font(.custom(Font.ramaraja, size: 30))
                                    .foregroundStyle(.white)
                                
                                Text(text2)
                                    .font(.custom(Font.ramaraja, size: 30))
                                    .foregroundStyle(.white)
                                
                                Text(text3)
                                    .font(.custom(Font.ramaraja, size: 30))
                                    .foregroundStyle(.white)
                                
                                Text(text4)
                                    .font(.custom(Font.ramaraja, size: 30))
                                    .foregroundStyle(.white)}
                        }
                        .padding(.vertical)
                    }
                    .frame(width: 353, height: 499)
            }
        }
        .padding(.vertical)
    }
}

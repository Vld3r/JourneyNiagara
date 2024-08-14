//
//  NigBtn.swift
//  Journey Niagara
//
//  Created by Nicolae Chivriga on 13/08/2024.
//

import Foundation
import SwiftUI

struct NigBtn: View {
    let text: String
    let action: () -> Void
    @AppStorage("quiz") var quiz: Bool?
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.init(hex: "#00683C"))
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(text == "QUEST" && quiz != nil ? (quiz! ? Color.green : Color.init(hex: "#FFC20E")) : Color.init(hex: "#FFC20E")
                            ,lineWidth:  text == "QUEST" && quiz != nil ? (quiz! ? 4 : 1) : 1)
                
                Text(text)
                    .font(.custom(Font.ramaraja, size: 30))
                    
                    .foregroundStyle(Color.init(hex: "#FFC20E"))
            }
            .frame(width: 253, height: 51)
            .onTapGesture {
                withAnimation {
                    action()
                }
            }
    }
}

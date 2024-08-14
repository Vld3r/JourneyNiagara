//
//  CorrectAnswerView.swift
//  Journey Niagara
//
//  Created by Nicolae Chivriga on 14/08/2024.
//

import Foundation
import SwiftUI

struct CorrectAnswerView: View {
    let text: String
    let currentNumber: Int
    let selectedNumber: Int
    @State var taped: Bool = false
    let action: () -> Void
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.init(hex: "#00683C"))
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.init(hex: "#FFC20E")
                        ,lineWidth: 1)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(taped ? (selectedNumber == currentNumber ? Color.init(hex: "#13FF0E") : Color.init(hex: "#FF0E0E")) :  Color.init(hex: "#FFC20E")
                            ,lineWidth:  1)
                
                RoundedRectangle(cornerRadius: 20)
                    .trim(from: 0, to: taped ? 1 : 0)
                    .stroke ((selectedNumber == currentNumber ? Color.init(hex: "#13FF0E") : Color.init(hex: "#FF0E0E")), lineWidth: 5)
                

                
                
                Text(text)
                    .font(.custom(Font.ramaraja, size: 30))
                    .foregroundStyle(Color.init(hex: "#FFC20E"))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
            .frame(width: 337, height: 51)
            .onTapGesture {
                withAnimation(Animation.linear(duration: 3)) {
                    taped = true
                }
                self.action()
            }
    }
}

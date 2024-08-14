//
//  MnHot.swift
//  Journey Niagara
//
//  Created by Nicolae Chivriga on 14/08/2024.
//

import Foundation
import SwiftUI

struct MnHot: View {
    @State var hotelCase: HotelsCases
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.init(hex: "#2D2D2D").opacity(0.59))
            .overlay {
                VStack(spacing: 1) {
                    Text(self.hotelCase.text)
                        .font(.custom(Font.ramaraja, size: 30))
                        .foregroundStyle(.white)
                    
                    Image(self.hotelCase.rawValue)
                        .padding(.bottom)
                }
                .padding()
            }
            .frame(width: 353, height: 240)
    }
}

//
//  BekNigView.swift
//  Journey Niagara
//
//  Created by Nicolae Chivriga on 13/08/2024.
//

import Foundation
import SwiftUI

struct BekNigView: View {
    let action: () -> Void
    var body: some View {
        Image("bekNig")
            .onTapGesture {
                withAnimation {
                    self.action()
                }
            }
    }
}

//
//  QuizQuestion.swift
//  Journey Niagara
//
//  Created by Nicolae Chivriga on 14/08/2024.
//

import Foundation
import SwiftUI

struct QuizQuestion: View {
    let image: String
    let question: String
    let correctAnswer: Int
    let answer1: String
    let answer2: String
    let answer3: String
    let action: () -> Void
    var body: some View {
        VStack {
            VStack(spacing: 27) {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                
                Text(question)
                    .font(.custom(Font.ramaraja, size: 30))
                    .foregroundStyle(.white)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.bottom)
                    .padding(.horizontal)
            }
            .frame(width: 353)
            .background(Color.init(hex: "#2D2D2D").opacity(0.59))
            .cornerRadius(20)
         
            
            VStack(spacing: 20) {
                CorrectAnswerView(text: answer1, currentNumber: correctAnswer, selectedNumber: 1) {
                    action()
                }
                
                CorrectAnswerView(text: answer2, currentNumber: correctAnswer, selectedNumber: 2) {
                    action()
                }
                
                CorrectAnswerView(text: answer3, currentNumber: correctAnswer, selectedNumber: 3) {
                    action()
                }
            }
        }
    }
}

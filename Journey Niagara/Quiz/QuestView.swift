//
//  QuestView.swift
//  Journey Niagara
//
//  Created by Nicolae Chivriga on 13/08/2024.
//

import Foundation
import SwiftUI

struct QuestView: View {
    @AppStorage("quiz") var bool = false
    @State var question: Int = 1
    @State var answered: Bool = false
    @EnvironmentObject private var rootV: RootJounerClass
    var body: some View {
        VStack(spacing: 2) {
            
                HStack {
                    BekNigView {
                            rootV.view = .menu
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
            
            HStack {
                Text("Quiz")
                    .font(.custom(Font.ramaraja, size: 30))
                    .foregroundStyle(Color.init(hex: "#FFC20E"))
                
                Spacer()
            }
            .padding(.horizontal)
            
            VStack {
                Group {
                    switch question {
                    case 1:
//                        Text("b")
                        QuizQuestion(image: "1", question: "When was Casino Niagara opened?", correctAnswer: 3, answer1: "A) 2000", answer2: "B) 1998", answer3: "C) 1996") {
                            self.answered = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                                withAnimation {
                                    self.question += 1
                                    self.answered = false
                                }
                            }
                        }
                    case 2:
                        QuizQuestion(image: "2", question: "Where is Casino Niagara located?", correctAnswer: 2, answer1: "A) Toronto", answer2: "B) Niagara Falls, Ontario", answer3: "C) Vancouver") {
                            self.answered = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                                withAnimation {
                                    self.question += 1
                                    self.answered = false
                                }
                            }
                        }
                    case 3:
                        QuizQuestion(image: "3", question: "Which popular attraction is located near Casino Niagara?", correctAnswer: 1, answer1: "A) Niagara Falls", answer2: "B) Statue of Liberty", answer3: "C) Eiffel Tower") {
                            self.answered = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                                withAnimation {
                                    self.question += 1
                                    self.answered = false
                                }
                            }
                        }
                    case 4:
                        QuizQuestion(image: "4", question: "Which casino is located nearby Casino Niagara?", correctAnswer: 2, answer1: "A) Casino Rama", answer2: "B) Fallsview Casino Resort", answer3: "C) Caesars Windsor") {
                            self.answered = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                                withAnimation {
                                    self.question += 1
                                    self.answered = false
                                }
                            }
                        }
                    case 5:
                        QuizQuestion(image: "5", question: "Approximately how many table games are available at Casino Niagara?", correctAnswer: 2, answer1: "A) About 50", answer2: "B) About 80", answer3: "C) About 100") {
                            self.answered = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                                withAnimation {
                                    self.question += 1
                                    self.answered = false
                                }
                            }
                        }
                    case 6:
                        QuizQuestion(image: "6", question: "What type of games, in addition to traditional casino games, is available at Casino Niagara?", correctAnswer: 1, answer1: "A) Poker", answer2: "B) Bingo", answer3: "C) Lottery") {
                            self.answered = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                                withAnimation {
                                    self.question += 1
                                    self.answered = false
                                }
                            }
                        }
                    case 7:
                        QuizQuestion(image: "7", question: "What type of entertainment events are offered at Casino Niagara?", correctAnswer: 1, answer1: "A) Concerts and shows", answer2: "B) Theater performances", answer3: "C) Sporting events") {
                            self.answered = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                                withAnimation {
                                    self.question += 1
                                    self.answered = false
                                }
                            }
                        }
                    case 8:
                        QuizQuestion(image: "8", question: "Does Casino Niagara have a hotel?", correctAnswer: 2, answer1: "A) Yes, with a few rooms", answer2: "B) No", answer3: "C) Yes, with many suites") {
                            self.answered = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                                withAnimation {
                                    self.question += 1
                                    self.rootV.view = .menu
                                    self.bool = true 
                                }
                            }
                        }
                        
                    default:  Text("b")
                    }
                }
                .transition(.scale)
            }
         
            Spacer()
        }
    }
}

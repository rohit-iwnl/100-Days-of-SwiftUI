//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Rohit Manivel on 3/21/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries : [String] = ["Estonia", "Germany", "France", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    
    @State private var isShowingAlert = false
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue,.white], startPoint: .topLeading, endPoint: .bottomLeading)
                .ignoresSafeArea()
            VStack(spacing: 20){
                VStack{
                    Text("Guess the flag of")
                        .foregroundStyle(.white)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(countries[correctAnswer])
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                
                ForEach(0..<3){ number in
                    Button{
                        flagTapped(number)
                    } label : {
                        Image(countries[number])
                            .clipShape(.capsule)
                            .shadow(radius: 5)
                    }
                    
                }
                
                if(score != 0){
                    Text("Current score : \(score)")
                }
            }
        }
        .alert(scoreTitle, isPresented: $isShowingAlert){
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
    }
    
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer{
            scoreTitle = "Correct"
            score += 1
            isShowingAlert = true
        } else{
            scoreTitle = "Wrong"
            isShowingAlert = true
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
    }
}

#Preview {
    ContentView()
}

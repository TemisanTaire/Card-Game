//
//  ContentView.swift
//  War Card Game
//
//  Created by Temisan Taire on 4/17/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing:50.0) {
                Image("logo")
                HStack(spacing: 40.0) {
                    Image(playerCard)
                    Image(cpuCard)
                }
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                
                
                HStack(spacing: 100.0) {
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    VStack {
                        Text("PC")
                            .font(.headline)
                            .padding(.bottom)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        }
                }.foregroundColor(.white)
                    
                }
                
            }
        }
    func deal() {
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }
        
        else if cpuCardValue > playerCardValue{
            cpuScore += 1
        }
    }
}
        
    
    

#Preview {
    ContentView()
}

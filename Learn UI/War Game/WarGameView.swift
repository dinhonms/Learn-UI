//
//  WarGameView.swift
//  Learn UI
//
//  Created by Nonato Sousa on 19/06/23.
//

import SwiftUI

struct WarGameView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    @State var playerScore = 0;
    @State var cpuScore = 0;
    
    func deal(){
        print   ("Deal cards!")
        
        var sortedPlayerCard = Int.random(in: 2...14)
        playerCard = "card" + String(sortedPlayerCard)
        
        var sortedCpuCard = Int.random(in: 2...14)
        cpuCard = "card" + String(sortedCpuCard)
        
        if sortedPlayerCard > sortedCpuCard{
            playerScore += 1
        }
        else if sortedCpuCard > sortedPlayerCard{
            cpuScore += 1
        }
    }
    
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 50.0){
                Image("logo")
                
                HStack(alignment: .center, spacing: 50.0){
                    Image(playerCard)
                    Image(cpuCard)
                }
                
                Button(action: {
                    deal()
                }) {
                    Image("button")
                }
                
                HStack(alignment: .center, spacing: 70.0){
                    VStack(spacing: 20.0){
                        Text("Player")
                            .font(.headline)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    VStack(alignment: .center, spacing: 20.0){
                        Text("CPU")
                            .font(.headline)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                }
                .foregroundColor(.white)
            }
        }
        
    }
}

struct WarGameView_Previews: PreviewProvider {
    static var previews: some View {
        WarGameView()
    }
}

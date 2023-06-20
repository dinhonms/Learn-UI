//
//  WarGameView.swift
//  Learn UI
//
//  Created by Nonato Sousa on 19/06/23.
//

import SwiftUI

struct WarGameView: View {
    
    var playerScore = 0;
    var cpuScore = 0;
    
    func deal(){
        print   ("Deal cards!")
    }
    
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 50.0){
                Image("logo")
                
                HStack(alignment: .center, spacing: 50.0){
                    Image("card2")
                    Image("card3")
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

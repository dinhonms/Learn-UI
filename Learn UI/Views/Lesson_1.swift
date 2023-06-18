//
//  Lesson_1.swift
//  Learn UI
//
//  Created by Nonato Sousa on 18/06/23.
//

import SwiftUI

struct Lesson_1: View {
    var body: some View {
        
        ZStack{
            Color(.gray)
                .ignoresSafeArea()
            
            VStack{
                
                Image("ic-niagara-falls")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Text("Niagara Falls")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
        }
        
    }
}

struct Lesson_1_Previews: PreviewProvider {
    static var previews: some View {
        Lesson_1()
    }
}

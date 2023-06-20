//
//  Lesson_3.swift
//  Learn UI
//
//  Created by Nonato Sousa on 18/06/23.
//

import SwiftUI

struct Lesson_3: View {
    var body: some View {
        
        ZStack{
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20.0){
                Image("ic-niagara-falls")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack{
                    Text("Niagara Falls")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        Text("(Reviews 361)")
                        
                    }
                    .foregroundColor(.orange)
                    .font(.caption)
                }
                
                Text("Come visit the falls for an experience of a lifetime")
                    .font(Font.defaultFont)
                
                HStack{
                    Spacer()
                    Image(systemName: "fork.knife")
                        .font(.caption)
                    Image(systemName: "binoculars.fill")
                        .font(.caption)
                }
                .foregroundColor(.gray)
            }
            .padding()
            .background(Rectangle()
                .cornerRadius(15)
                .foregroundColor(.white)
                .shadow(radius: 15)
            )
            .padding()
        }
    }
}

struct Lesson_3_Previews: PreviewProvider {
    static var previews: some View {
        Lesson_3()
    }
}

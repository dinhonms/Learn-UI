//
//  LoginVIew.swift
//  Learn UI
//
//  Created by Nonato Sousa on 18/06/23.
//

import SwiftUI

struct LoginVIew: View {
    @State var emailText: String = ""
    @State var passwordText: String = ""
    
    var body: some View {
        ZStack{
            Color(.white)
                .ignoresSafeArea()
            
            ZStack{
                Image("ic-background")
                    .renderingMode(.original)
                    .resizable()
                    .padding(.bottom, 301)
                    .ignoresSafeArea()
                
                Image("ic-background-effect")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 413.0)
                    .padding(.bottom, 305.0)
                
                ZStack{
                    Text("Login")
                        .font(Font.largeTitle)
                        .foregroundColor(.white)
                        .padding(.top, 122.0)
                        .padding(.bottom, 361.0)
                    
                    ZStack{
                        VStack{
                            ZStack{
                                Image("ic-interactable")
                                HStack{
                                    Image(systemName:"person")
                                        .foregroundColor(Color("AccentColor"))
                                    TextField(
                                        "Email",
                                        text: $emailText
                                    )
                                    .padding(.top, 37)
                                    .padding(.bottom, 18.0)
                                    .padding(.horizontal, 68)
                                    .font(Font.defaultFont)
                                    Image(systemName: "checkmark.circle.fill")
                                        .foregroundColor(Color("Check"))
                                }
                            }
                            
                            ZStack{
                                Image("ic-interactable")
                                HStack{
                                    Image("ic-locker")
                                        .foregroundColor(Color("AccentColor"))
                                    TextField(
                                        "Password",
                                        text: $passwordText
                                    )
                                    .padding(.top, 18)
                                    .padding(.bottom, 48)
                                    .padding(.horizontal, 68)
                                    .font(Font.defaultFont)
                                }
                            }
                        }
                    }
                    
                    Button(action: {
                        //TODO: login action
                    }) {
                        Text("Login")
                            .foregroundColor(.white)
                            .font(Font.defaultFont)
                    }
                    .padding(.top, 48.0)
                    .padding(.bottom, 444.0)
                    
                    Button(action: {
                        //TODO: forgot password
                    }) {
                        Text("Forgot your password?")
                            .foregroundColor(.white)
                            .font(Font.defaultFont)
                    }
                    .padding(.top, 24.0)
                    .padding(.bottom, 406.0)
                    
                }
            }
            
        }
    }
}

struct LoginVIew_Previews: PreviewProvider {
    static var previews: some View {
        LoginVIew()
    }
}

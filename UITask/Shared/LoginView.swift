//
//  LoginView.swift
//  UITask
//
//  Created by Anbusekar Murugesan on 30/12/2021.
//

import SwiftUI

struct LoginView: View {
    
    @State var username = "Anbusekar@gmail.com"
    @State var password = "SwiftUI"
    
    var body: some View {
        
        NavigationView {
            
            ZStack(alignment: .top) {
                Color.appBackgroundColor
                    .edgesIgnoringSafeArea(.all)
                
                Group {
                    
                    customCircle(bgColor: .appYellow, xPosition: -180, yPosition: -100, circleWidth: 300, circleHeight: 300)
                    
                    Capsule()
                        .fill(Color.appDarkBlue)
                        .rotationEffect(.degrees(90))
                        .frame(width: 175, height: 115, alignment: .center).offset(x: -25, y: -35)
                    
                    customCircle(bgColor: .appOrange, xPosition: -170, yPosition: 160, circleWidth: 150, circleHeight: 150)
                    
                    customCircle(bgColor: .appDarkBlue, xPosition: -80, yPosition: 205, circleWidth: 70, circleHeight: 70)
                    
                    customCircle(bgColor: .AppCyan, xPosition: -25, yPosition: 90, circleWidth: 95, circleHeight: 95)
                    
                    customCircle(bgColor: .appOrange, xPosition: -25, yPosition: 12, circleWidth: 115, circleHeight: 115)
                    
                    customCircle(bgColor: .appOrange, xPosition: -25, yPosition: 12, circleWidth: 115, circleHeight: 115)
                    
                    customCircle(bgColor: .AppPink, xPosition: 125, yPosition: -50, circleWidth: 175, circleHeight: 180)
                    
                    customCircleWithInnerShade(bgColor: .appYellow, xPosition: 193, yPosition: 160, shadexPosition: -65, shadeyPosition: 68, circleWidth: 130, circleHeight: 130, shadeColor: .AppCyan)
                    
                    
                    
                    Group {
                       
                        customCircleWithInnerShade(bgColor: .white, xPosition: 65, yPosition: 170, shadexPosition: 65, shadeyPosition: 58, circleWidth: 125, circleHeight: 125, shadeColor: .AppCyan)
                        
                        customCircle(bgColor: .AppCyan, xPosition: 125, yPosition: 90, circleWidth: 150, circleHeight: 140)
                        
                        Text("Welcome").font(.custom("Pacifico-Regular", size: 45)).foregroundColor(.white).offset(x: -90, y: 350)
                        
                        Text("Back").font(.custom("Pacifico-Regular", size: 45)).foregroundColor(.white).offset(x: -123, y: 415)
                        
                        TextField("username", text: $username, prompt: Text("username"))
                            .frame(width: 310, height: 25, alignment: .center)
                            .padding()
                            .background(Color.textFieldbackground)
                            .cornerRadius(50)
                            .foregroundColor(.white)
                            .font(.custom("Oswald-Regular", size: 19))
                            .padding(.bottom, 5).offset(x: 0, y: 520)
                            .foregroundColor(Color.white)
                            
                        
                        SecureField("FIRST NAME", text: $password, prompt: Text(""))
                            .foregroundColor(.white)
                            .frame(width: 310, height: 25, alignment: .center)
                            .padding()
                            .background(Color.textFieldbackground)
                            .cornerRadius(50)
                            .foregroundColor(.white)
                            .font(.title2)
                            .padding(.bottom, 5).offset(x: 0, y: 600)
                        Button(action: {
                            
                        }, label: {
                            Text("Forgot Password?")
                                .foregroundColor(.white)
                                .font(.custom("Oswald-Regular", size: 17))
                                .fontWeight(.bold)
                        }).offset(x: 120, y: 670)
                        
                        Group {
                            Button(action: {
                                
                            }, label: {
                                Text("Login")
                                    .foregroundColor(.white)
                                    .font(.custom("Oswald-Regular", size: 25))
                                    .fontWeight(.bold)
                                    .padding(.bottom, 5)
                            })
                                .frame(width: 140, height: 60, alignment: .center)
                                .background(Color.appOrange)
                                .cornerRadius(55).offset(x: 5, y: 720)
                            NavigationLink(destination: LoginView()) {
                            }
                            Text("New User ?")
                                .fontWeight(.bold)
                                .font(.custom("Oswald-Regular", size: 16))
                                .frame(width: 200, height: 50, alignment: .center)
                                .foregroundColor(.white).offset(x: -25, y: 795)
                            Button(action: {
                                
                            }, label: {
                                Text("Signup")
                                    .foregroundColor(Color.appOrange)
                                    .font(.custom("Oswald-Regular", size: 16))
                                    .fontWeight(.heavy)
                            }).offset(x: 35, y: 808)
                            
                          
                        }
                        
                    }
                    
                }
                
                VStack {
                   
                }.offset(x: -10, y: 500)
                
            }.ignoresSafeArea()
            
            
            
        }
    }
}

struct customCircle: View {
    var bgColor: Color
    var xPosition: CGFloat
    var yPosition: CGFloat
    var circleWidth: CGFloat
    var circleHeight: CGFloat
    
    var body: some View {
        Circle()
            .fill(bgColor)
            .offset(x: xPosition, y: yPosition)
            .frame(width: circleWidth, height: circleHeight)
    }
    
}

struct customCircleWithInnerShade: View {
    
    var bgColor: Color
    var xPosition: CGFloat
    var yPosition: CGFloat
    var shadexPosition: CGFloat
    var shadeyPosition: CGFloat
    var circleWidth: CGFloat
    var circleHeight: CGFloat
    var shadeColor: Color
    
    var body: some View {
        ZStack {
            Circle().fill(shadeColor).offset(x: shadexPosition, y: shadeyPosition).frame(width: circleWidth, height: circleHeight)
        }.background(bgColor).cornerRadius(circleHeight / 2).offset(x: xPosition, y: yPosition)
    }
    
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

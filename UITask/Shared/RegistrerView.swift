//
//  RegistrerView.swift
//  UITask
//
//  Created by Anbusekar Murugesan on 25/12/2021.
//

import SwiftUI
import UIKit

struct RegistrerView: View {
    
    @State var firstName = "John"
    @State var lastName = "Doe"
    @State var mail = "123456789"
    @State var code = "+41"
    @State var center = "Select center"
    
    var body: some View {
      
        ZStack{
            Color.appBackgroundColor
                .ignoresSafeArea()
            
            customCircle(bgColor: .appOrange, xPosition: -210, yPosition: 400, circleWidth: 180, circleHeight: 180)
            customCircle(bgColor: .appYellow, xPosition: 200, yPosition: 430, circleWidth: 180, circleHeight: 180)
            Group {
                Text("Hello...!").font(.custom("Pacifico-Regular", size: 40)).foregroundColor(.white).frame(width: 330, height: 200, alignment: .leading)
            }.offset(x: 0, y: -330)
           
            VStack {
                TextField("username", text: $firstName, prompt: Text("username"))
                    .padding(.leading, 10)
                    .frame(width: 310, height: 20, alignment: .center)
                    .padding()
                    .background(Color.textFieldbackground)
                    .cornerRadius(50)
                    .foregroundColor(.white)
                    .font(.custom("Oswald-Regular", size: 19))
                    .padding(.bottom, 15)
                    .foregroundColor(Color.white)
                
                TextField("username", text: $lastName, prompt: Text("username"))
                    .padding(.leading, 10)
                    .frame(width: 310, height: 20, alignment: .center)
                    .padding()
                    .background(Color.textFieldbackground)
                    .cornerRadius(50)
                    .foregroundColor(.white)
                    .font(.custom("Oswald-Regular", size: 19))
                    .padding(.bottom, 15)
                    .foregroundColor(Color.white)
                
                ZStack {
                    TextField("username", text: $mail, prompt: Text("username"))
                        .padding(.leading,70)
                        .frame(width: 310, height: 20, alignment: .center)
                        .padding()
                        .background(Color.textFieldbackground)
                        .cornerRadius(50)
                        .foregroundColor(.white)
                        .font(.custom("Oswald-Regular", size: 19))
                        .padding(.bottom, 15)
                        .foregroundColor(Color.white)
                    
                    TextField("username", text: $code, prompt: Text("username"))
                        .padding(.leading,7)
                        .frame(width: 45, height: 20, alignment: .center)
                        .padding()
                        .background(Color.ovetTextField)
                        .cornerRadius(50)
                        .foregroundColor(.white)
                        .font(.custom("Oswald-Regular", size: 19))
                        .padding(.bottom, 15)
                        .foregroundColor(Color.white).offset(x: -137, y: 0)
                }
                
                TextField("username", text: $firstName, prompt: Text("username"))
                    .padding(.leading, 10)
                    .frame(width: 310, height: 20, alignment: .center)
                    .padding()
                    .background(Color.textFieldbackground)
                    .cornerRadius(50)
                    .foregroundColor(.white)
                    .font(.custom("Oswald-Regular", size: 19))
                    .padding(.bottom, 15)
                    .foregroundColor(Color.white)
                
                TextField("username", text: $center, prompt: Text("username"))
                    .padding(.leading, 10)
                    .frame(width: 310, height: 20, alignment: .center)
                    .padding()
                    .background(Color.textFieldbackground)
                    .cornerRadius(50)
                    .foregroundColor(.white)
                    .font(.custom("Oswald-Regular", size: 19))
                    .padding(.bottom, 15)
                    .foregroundColor(Color.white)
                
                Button(action: {
                    
                }, label: {
                    Text("Signup")
                        .foregroundColor(.white)
                        .font(.custom("Oswald-Regular", size: 23))
                        .fontWeight(.bold)
                        .padding(.bottom, 5)
                })
                    .frame(width: 140, height: 60, alignment: .center)
                    .background(Color.appOrange)
                    .cornerRadius(55).padding(30)
              
               
                
            }.offset(x: 0, y: -20)
            
            Text("Already have Account?")
                .fontWeight(.bold)
                .font(.custom("Oswald-Regular", size: 15))
                .frame(width: 200, height: 50, alignment: .center)
                .foregroundColor(.white).offset(x: -25, y: 390)
            Button(action: {
                
            }, label: {
                Text("Login")
                    .foregroundColor(Color.appOrange)
                    .font(.custom("Oswald-Regular", size: 15))
                    .fontWeight(.heavy)
            }).offset(x: 58, y: 390)
        }
    }
}





struct RegistrerView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrerView()
    }
}

extension Color {
    static let appBackgroundColor = Color("BackgroundColor")
    
    static let appYellow = Color("AppYellow")
    
    static let appOrange = Color("AppOrange")
    
    static let appDarkBlue = Color("appDarkBlue")

    static let AppCyan = Color("AppCyan")
    
    static let AppPink = Color("AppPink")
    
    static let textFieldbackground = Color("textFieldbackground")
    
    static let ovetTextField = Color("ovetTextField")
}

//
//  SpaceWalpButton.swift
//  MoviesApp
//
//  Created by kim jong moon on 11/03/2021.
//

import SwiftUI

struct SpaceWalpButton: View {
    var body: some View {
        
        VStack{
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.9), Color.pink.opacity(0.9)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                
                Text("Chick \(Image(systemName: "applelogo")) Chick")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                
                    
                
            }
            .cornerRadius(25)
            .frame(width: UIScreen.main.bounds.width - 50, height: 60)
            .padding()
            
            Text("Sign in or log in")
                .foregroundColor(.white)
                .opacity(0.8)
                .font(.title2)
                
            
        }.padding(.all, 40)
        
    }
}

struct SpaceWalpButton_Previews: PreviewProvider {
    static var previews: some View {
        SpaceWalpButton()
    }
}

//
//  SpaceLoginButton.swift
//  MoviesApp
//
//  Created by kim jong moon on 11/03/2021.
//

import SwiftUI

struct SpaceLoginButton: View {
    
    @Binding var isOnScreen: Bool
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text("Login").foregroundColor(.white).fontWeight(.medium)
                .frame(width: UIScreen.main.bounds.width - 50, height: 60)
                .background(Color.init(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 3)
                .fill(Color.init(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                .frame(width: UIScreen.main.bounds.width - 50, height: 60)
                .overlay(Text("Create an account")
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                )
            Text("I want to go as Geust").font(.headline).foregroundColor(.secondary)
            
        }
        .offset(y: isOnScreen ? 0 : 300)
        .animation(.spring(dampingFraction: 0.7))
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                withAnimation{self.isOnScreen.toggle()}
            }
        }
        
    }
}

//struct SpaceLoginButton_Previews: PreviewProvider {
//    static var previews: some View {
//        SpaceLoginButton(isOnScreen: <#Binding<Bool>#>)
//    }
//}

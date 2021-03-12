//
//  SpaceLoginView.swift
//  MoviesApp
//
//  Created by kim jong moon on 11/03/2021.
//

import SwiftUI

struct SpaceLoginView: View {
    
    @State var isOnScreen = false
    
    var body: some View {
        
        
        VStack(spacing: 10){
            
            Spacer()
            VStack(alignment: .leading, spacing: 10){
                
                Text("Welcome to\n My World Guys").font(.largeTitle).fontWeight(.bold).foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                
                Text("Get amasing wallpaper for your mobile and web with one click and free download")
                    .font(.headline).foregroundColor(.secondary)
                
                
            }.padding(.all, 10).opacity(isOnScreen ? 1 : 0)
            
            SpaceLoginButton(isOnScreen: $isOnScreen)
            
        }.frame(width: UIScreen.main.bounds.width)
        
    }
}

struct SpaceLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SpaceLoginView()
    }
}

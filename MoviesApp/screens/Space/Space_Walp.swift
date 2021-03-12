//
//  Space_Walp.swift
//  MoviesApp
//
//  Created by kim jong moon on 11/03/2021.
//

import SwiftUI

struct Space_Walp: View {
    @State var isActive = false
    var body: some View {
        
        ZStack{
            if isActive != true{
                LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.9), Color.black.opacity(0.5)]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            }
            ImgandShape_View(isActive: $isActive)
                
            VStack{
                Spacer()
                SpaceWalpButton()
                    .opacity(isActive ? 0 : 1)
                    .onTapGesture {withAnimation{isActive.toggle()}}
            }
            if isActive == true {
                SpaceLoginView()
                    .onTapGesture {withAnimation{isActive.toggle()}}
            }
        }
        
        
    }
}

struct Space_Walp_Previews: PreviewProvider {
    static var previews: some View {
        Space_Walp()
    }
}

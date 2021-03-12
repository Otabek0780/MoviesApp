//
//  ImgandShape_View.swift
//  MoviesApp
//
//  Created by kim jong moon on 11/03/2021.
//

import SwiftUI

struct ImgandShape_View: View {
    @State var curvedValue: CGFloat = 90
    @Binding var isActive: Bool
    var body: some View {
        
        VStack {
            Image(uiImage: #imageLiteral(resourceName: "pexels-photo-7097503"))
                .resizable()
                .frame(width: isActive ? UIScreen.main.bounds.width : UIScreen.main.bounds.width * 2)
                .clipShape(
                    CurvedSideRectangle(myOffset: isActive ? curvedValue : 420)
                )
                .frame(height: isActive ? UIScreen.main.bounds.height/1.7 : UIScreen.main.bounds.height)
                .animation(.spring(response: 0.8, dampingFraction: 1))
                .edgesIgnoringSafeArea(.top)
                
            Spacer()
        }
    }
}

//struct ImgandShape_View_Previews: PreviewProvider {
//    static var previews: some View {
//        ImgandShape_View(isActive: <#Binding<Bool>#>)
//    }
//}


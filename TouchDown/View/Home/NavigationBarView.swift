//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by Jaime Uribe on 8/11/21.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES
    @State private var isAnimate: Bool = false
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }) //: BUTTON
            
            Spacer()
            
            LogoView()
                .opacity(isAnimate ? 1 : 0)
                .offset(x: 0, y: isAnimate ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimate.toggle()
                    }
                }) // Here create animate logo
            
            Spacer()
            
            ZStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
            })//: BUTTON
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 15, height: 15, alignment: .center)
                    .offset(x: 13, y: -10) // posicion
            }
            
        } //: HSTACK
    }
}

//MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

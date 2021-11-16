//
//  ContentView.swift
//  TouchDown
//
//  Created by Jaime Uribe on 8/11/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ZStack { // solved fix in device with touch bar
            VStack {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top) // solved fix in device with touch bar
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0 ) {
                        
                        FeaturedTabView()
                            .frame(width: 380, height: 220, alignment: .center)
                            .padding(.vertical, 0)
                        
                        CategoryGridView()
                
                        FooterView()
                            .padding(.horizontal)
                        
                    }
                }//: SCROLL
                
                
            } //: VSTACK
            .background(colorBackGround.ignoresSafeArea(.all, edges: .all))
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

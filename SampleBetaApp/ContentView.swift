//
//  ContentView.swift
//  SampleBetaApp
//
//  Created by Squareboat User on 19/06/19.
//  Copyright © 2019 Squareboat. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            VStack {
                
                Spacer()
                
                VStack{
                    Image("squareboat")
                        .padding(.all, 20)
                        .frame(width: 200.0, height: 200.0, alignment: .center)
                        .scaledToFill()
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.blue,lineWidth: 4))
                        .shadow(radius: 10)
                        .offset(y: -100)
                        .padding(.bottom, -110)
                    Text("Welcome to")
                        .italic()
                        .color(.blue)
                        .padding(.top,20)
                    Text("SwiftUI Sample App")
                        .bold()
                        .color(.blue)
                        .padding(.bottom, 20)
                    
                    }.frame(width: 500)
                    .background(Color.blue.opacity(0.1
                    ))
                
                Spacer()
                
                NavigationButton(destination: ListContentView(), label: {
                    Text("Continue")
                        .bold()
                        .color(.blue)
                        .padding([.leading,.trailing],50)
                        .padding([.top,.bottom], 10)
                }).border(Color.blue, width : 2, cornerRadius: 20)
                    .padding(20)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

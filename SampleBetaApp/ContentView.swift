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
                
                MiddleView()
                
                Spacer()
                
                NavigationButton(destination: ListContentView(clientStore: ClientsStore(clients: clientData)), label: {
                    Text("Continue")
                        .bold()
                        .color(.blue)
                        .padding([.leading,.trailing],50)
                        .padding([.top,.bottom], 10)
                }).border(Color.blue, width : 2, cornerRadius: 20)
                    .padding(20)
                    }.navigationBarTitle(Text("Squareboat Solutions"))
        }
    }
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView().environment(\.colorScheme, .dark)
        }
    }
}
#endif

struct MiddleView : View {
    var rotated = false
    var body: some View {
        return VStack{
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
            
            
                        Text("Great products for great ideas")
                            .font(.headline)
                            .italic()
                            .fontWeight(.semibold)
                            .color(.white)
                            .multilineTextAlignment(.leading)
                            .padding([.top,.bottom],10)
            
                            }.frame(width: 500)
                                .background(Color.blue.opacity(0.7
                                )).background(Image("hero")
                                    .opacity(0.12)
                                    .animation(.spring()))
                            }
                        }

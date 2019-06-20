//
//  ListContentView.swift
//  SampleBetaApp
//
//  Created by Squareboat User on 19/06/19.
//  Copyright © 2019 Squareboat. All rights reserved.
//

import SwiftUI

struct ListContentView : View {
    var clients: [ClientsModel] = []
    var body: some View {
        List(clients){ client in
            NavigationButton(destination: Text(client.name)){
            Image(client.image)
                .resizable()
                .padding(10)
                .aspectRatio(1/1, contentMode: .fit)
                .clipped()
                .cornerRadius(8)
            VStack(alignment: .leading){
                Text(client.name)
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                Text(client.dev_type)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                Text(client.service)
                    .color(.gray)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                }
            }
            }.navigationBarTitle(Text("Our Clients"))
            .listStyle(.grouped)
    }
}

#if DEBUG
struct ListContentView_Previews : PreviewProvider {
    static var previews: some View {
        Group{
            NavigationView{
                ListContentView(clients: clientData)
            }
            NavigationView{
                ListContentView(clients: clientData)
            }.environment(\.colorScheme, .dark)
        }
    }
}
#endif

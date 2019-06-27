//
//  ClientDetailView.swift
//  SampleBetaApp
//
//  Created by Squareboat User on 20/06/19.
//  Copyright © 2019 Squareboat. All rights reserved.
//

import SwiftUI

struct ClientDetailView : View {
    var client : ClientsModel
    var body: some View {
        VStack{
            Image(client.image)
                .resizable()
                .padding(10)
                .aspectRatio(contentMode: .fit)
                .clipped()
                .cornerRadius(8)
            
            TextView(client: client)

            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .navigationBarTitle(Text(client.name))
    }
}

#if DEBUG
struct ClientDetailView_Previews : PreviewProvider {
    static var previews: some View {
        Group
        {
            NavigationView{
                ClientDetailView(client: clientData[5])
            }
            NavigationView{
                ClientDetailView(client: clientData[1])
            }.environment(\.colorScheme, .dark)
        }
    }
}
#endif

struct TextView : View {
    var client : ClientsModel
    var body: some View {
        return VStack(alignment: .leading){
            Text("Services")
                .font(.headline)
                .padding([.top,.bottom],5)
                Text(client.dev_type)
                    .font(.body)
                    .color(.gray)
                Text(client.service)
                    .font(.body)
                    .color(.gray)
                Text("Description")
                    .font(.headline)
                    .padding([.top,.bottom],5)
                Text(client.description)
                    .font(.body)
                    .color(.gray)
                    .multilineTextAlignment(.leading)
                    .lineLimit(8)
                }.padding().frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        }
    }

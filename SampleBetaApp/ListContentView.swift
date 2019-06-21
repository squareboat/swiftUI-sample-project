//
//  ListContentView.swift
//  SampleBetaApp
//
//  Created by Squareboat User on 19/06/19.
//  Copyright © 2019 Squareboat. All rights reserved.
//

import SwiftUI

struct ListContentView : View {
    var HackrModel = ClientsModel(name: "Hackr.io", description: "Google search shows you hundreds of programming courses/tutorials, but Hackr. io tells you which is the best one. Find the Best Programming Courses & Tutorials", start_date: "Sept 2015", dev_type: "Sab Kuch", service: "Web - Apps - Sales", image: "hackr")
    @ObjectBinding var clientStore = ClientsStore()
    
    var body: some View {
        List {
            Section{
                ForEach(clientStore.clients)
                { client in
                    
                    ClientRow(client: client)
                }
            }
            Section{
                PresentationButton(Text("View In-House Products"), destination: ClientDetailView(client: HackrModel))
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
                ListContentView(clientStore: ClientsStore(clients: clientData))
            }
            NavigationView{
                ListContentView(clientStore: ClientsStore(clients: clientData))
            }.environment(\.colorScheme, .dark)
        }
    }
}
#endif

struct ClientRow : View {
    var client : ClientsModel
    var body: some View {
        return NavigationButton(destination: ClientDetailView(client: client)){
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
    }
}

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
            Image(client.image)
                .frame(width: 80, height: 80, alignment: .center).clipped(antialiased: false)
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

#if DEBUG
struct ListContentView_Previews : PreviewProvider {
    static var previews: some View {
        Group{
        ListContentView(clients: clientData)
        ListContentView(clients: clientData).environment(\.colorScheme, .dark)
        }
        }
}
#endif

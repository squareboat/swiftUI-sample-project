//
//  ListContentView.swift
//  SampleBetaApp
//
//  Created by Squareboat User on 19/06/19.
//  Copyright © 2019 Squareboat. All rights reserved.
//

import SwiftUI

struct ListContentView : View {
    var body: some View {
        HStack{
            Image("squareboat")
                .frame(width: 100, height: 80, alignment: .center).clipped()
            
        VStack(alignment: .leading){
            Text("SQUAREBOAT")
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
            Text("PVT. LTD.")
                .font(.subheadline)
                .multilineTextAlignment(.leading)
            Text("Company")
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
        ListContentView()
    }
}
#endif

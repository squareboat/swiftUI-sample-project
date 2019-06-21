//
//  clientsClass.swift
//  SampleBetaApp
//
//  Created by Squareboat User on 21/06/19.
//  Copyright © 2019 Squareboat. All rights reserved.
//

import SwiftUI
import Combine

class ClientsStore : BindableObject{
    var clients : [ClientsModel] {
        didSet {
            didChange.send(Void())
        }
    }
    
    init(clients : [ClientsModel] = []){
        self.clients = clients
    }
    
    var didChange = PassthroughSubject<Void, Never>()
}

//
//  ClientsModel.swift
//  SampleBetaApp
//
//  Created by Squareboat User on 20/06/19.
//  Copyright © 2019 Squareboat. All rights reserved.
//

import Foundation
struct ClientsModel : Hashable, Codable{
    var id : Int
    var name : String
    var description : String
    var start_date : String
    var dev_type : String
    var service : String
    var image : String
    
}

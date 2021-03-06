//
//  ClientsModel.swift
//  SampleBetaApp
//
//  Created by Squareboat User on 20/06/19.
//  Copyright © 2019 Squareboat. All rights reserved.
//

import SwiftUI

struct ClientsModel : Identifiable{
    var id = UUID()

    var name : String
    var description : String
    var start_date : String
    var dev_type : String
    var service : String
    var image : String
    
}

#if DEBUG
let clientData = [
ClientsModel(name: "Jubilant", description: "Fresh finds let you order fruits", start_date: "Jan 2018", dev_type: "UI/UX Design", service: "App Development", image: "jubilant"),
ClientsModel(name: "OxfordCaps", description:  "Find the accommodation you love near your university. Choose your city and start exploring!", start_date: "Feb 2018", dev_type: "UI/UX Design", service: "Web Development", image: "oxfordcaps"),
ClientsModel(name: "LBB", description: "An All New Way to Explore Your City.", start_date: "Dec 2017", dev_type: "Alexa Skill", service: "Web Development", image: "lbb"),
ClientsModel(name: "Hudle", description: "Hudle helps you connect with various sports venues and events to book and play.", start_date: "Apr 2018", dev_type: "UI/UX Design", service: "App Development", image: "hudle"),
ClientsModel(name: "iDreamCareer.com", description: "Career Counselling in India: iDreamCareer is one of India's leading Career Couselling Experts that provides very detailed Career Guidance tips.", start_date: "Nov 2017", dev_type: "UI/UX Design", service: "Web Development", image: "idc"),
ClientsModel(name: "Paisabazaar", description: "Whether you want to earn rewards or save more with discounts and deals, you will never fall short of Credit Card options. Paisabazaar is the right place to find the card that best fits your needs.", start_date: "Apr 2018", dev_type: "UI/UX Design", service: "Growth Hacking", image: "paisabazaar")
]
#endif

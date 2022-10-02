//
//  Project.swift
//  KSA
//
//  Created by Ruba Yahya on 01/10/2022.
//

import SwiftUI

struct Project{
    var id = UUID()
    var name : String
    var imageName : String
    var about : String
}

let ProjectData : [Project] = [
    //1
    Project(name: "​Diriyah Gate Project", imageName: "Di", about: "​To preserve the jewel of the Kingdom and make it the cultural and heritage capital, a landmark for Saudis and an icon for the whole world"),
    //2
    Project(name: "​​Shaheen Sat", imageName: "Sh", about: "​​A new generation of small sized satellites with high-efficiency"),
    //3
    Project(name: "​Train Projects", imageName: "Train", about: "​​A large transformation in public transportation, to provide easier, comfortable and safer transportation for the citizens"),
    //4
    Project(name: "​​The LINE (NEOM) Project", imageName: "The-LIine", about: "​​​The capital of entertainment, sports and arts. A unique global destination for the most innovative and diverse experiences in the fields of entertainment and arts "),
    //5
    Project(name: "​Qiddiya Project", imageName: "Qiddiya", about: "​ To preserve the jewel of the Kingdom and make it the cultural and heritage capital, a landmark for Saudis and an icon for the whole world"),
    //6
    Project(name: "​​Trojena (NEOM) Project", imageName: "Trojena", about: "​A mountain destination where charming landscapes are combined with unique activities "),
    //7
    Project(name: "​The National Renewable Energy Program ", imageName: "NRE", about: "​An integrated program to increase sustainable renewable energy from the total energy sources in the Kingdom of Saudi Arabia "),
    //8
    Project(name: "​​Amaala Project", imageName: "Amaala", about: "​​Inspirational & exceptional. A luxury tourist destination, based on convalescence, health and treatment"),
]

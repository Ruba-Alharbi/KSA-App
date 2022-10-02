//
//  Leader.swift
//  KSA
//
//  Created by Ruba Yahya on 01/10/2022.
//

import SwiftUI

struct Leader{
    var id = UUID() //give uniqe id
    var name : String
    var startYear : String
    var endYaer : String
    var imageName : String
}

let LeaderData : [Leader] = [
    //1
    Leader(name: "Abdulaziz bin Abdul Rahman Al Saud", startYear: "1932", endYaer: "1953", imageName: "King-Abdulaziz"),
    //2
    Leader(name: "Saud bin Abdulaziz Al Saud", startYear: "1953", endYaer: "1964", imageName: "King-Saud"),
    //3
    Leader(name: "Faisal bin Abdulaziz Al Saud", startYear: "1964", endYaer: "1975", imageName: "King-Faisal"),
    //4
    Leader(name: "Khalid bin Abdulaziz Al Saud", startYear: "1975", endYaer: "1982", imageName: "King-Khalid"),
    //5
    Leader(name: "Fahd bin Abdulaziz Al Saud", startYear: "1982", endYaer: "2005", imageName: "King-Fahd"),
    //6
    Leader(name: "Abdullah bin Abdulaziz Al Saud", startYear: "2005", endYaer: "2015", imageName: "King-Abdullah"),
    //7
    Leader(name: "Salman bin Abdulaziz Al Saud", startYear: "2015", endYaer: "2022", imageName: "King-Salman"),
]


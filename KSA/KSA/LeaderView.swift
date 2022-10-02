//
//  LeaderView.swift
//  KSA
//
//  Created by Ruba Yahya on 01/10/2022.
//

import SwiftUI

struct LeaderView: View {
    //Properties
    var leader : [Leader] = LeaderData
    
    //Body
    var body: some View {
        ScrollView(.vertical){
           VStack{
               Text("Saudi Leaders")
                   .fontWeight(.bold)
                   .font(.largeTitle)
                   .foregroundColor(Color("DarkGreen"))
               
               ForEach(leader, id: \.id) { leader in
                   Card(gradient: [Color("DarkGreen"), Color("Green")], leader: leader, framHeight: 430)
               }//: ForEach
            }//: VStack
      
       }//: ScrollView
    }//: body
}

struct LeaderView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderView()
    }
}

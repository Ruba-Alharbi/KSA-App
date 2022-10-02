//
//  ​​IdentityProjectsView.swift
//  KSA
//
//  Created by Ruba Yahya on 01/10/2022.
//

import SwiftUI

struct IdentityProjectsView: View {
    //Properties
    var project  : [Project] = ProjectData
    //Body
    var body: some View {
        ScrollView(.vertical){
            VStack{
                Text("Identity Projects")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .foregroundColor(Color("Red"))
                
                ForEach(project, id: \.id) { project in
                    Card(gradient: [Color("Red"), Color("Yellow")], framHeight: 400, project: project)
                }
        }//: VStack
        }//: ScrollView
    }//: body
}

struct IdentityProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        IdentityProjectsView()
    }
}

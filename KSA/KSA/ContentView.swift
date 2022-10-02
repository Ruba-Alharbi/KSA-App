//
//  ContentView.swift
//  KSA
//
//  Created by Ruba Yahya on 28/09/2022.
//

import SwiftUI

struct ContentView: View {
    //Properties

    //body
    var body: some View {
      NavigationView(){
          VStack(spacing: 20) {
              Image("logo")
                  .resizable()
                  .scaledToFit()
                  .frame(height: 90, alignment: .topLeading)
                  .padding()
              
            NavigationLink(destination: LeaderView()){
                Section(colorName: "DarkGreen", text: "Saudi Leaders", imageName: "King-Abdulaziz")
            }
            
            NavigationLink(destination: IdentityProjectsView()){
                Section(colorName: "Red", text: "Identity Projects", imageName: "Di")
            }
              Spacer()
//            Section(colorName: "Blue", text: "KSA Regions", imageName: "Logo")

        }//: VStack
          .padding(.vertical, 20)
          
      }//: NavigationView
        
        
    }//: body
}

//Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

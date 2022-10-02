//
//  Card.swift
//  KSA
//
//  Created by Ruba Yahya on 30/09/2022.
//

import SwiftUI

struct Card: View {
    //Properties
    var gradient : [Color]
    var leader : Leader?
    var startYear : Int {Int(leader!.startYear) ?? 0}
    var endYear : Int {Int(leader!.endYaer) ?? 0}
    var totalYear : Int {abs(endYear - startYear)}
    var framHeight : CGFloat
    var project : Project?
    @State var isAnimating : Bool = false
    
    //body
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            //MARK: - Leaders
            if leader != nil {
                Spacer()
                Image(leader!.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 243, height: 290)
                    .fixedSize()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                Text(leader!.name)
                    .font(.system(size: 25, design: .rounded))
                    .fontWeight(.bold)
                    .frame(width: 320)
                    .fixedSize()
                
                Text("\(leader!.startYear) - \(leader!.endYaer)")
                    .font(.title3)
                    
           
                Text("\(totalYear.self)")
                    .fontWeight(.light)
            }//: EndIf
            
            //MARK: - Projects
            else{
                Image(project!.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 205, height: 202)
                    .fixedSize()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                Text(project!.name)
                    .font(.system(size: 20, design: .rounded))
                    .fontWeight(.bold)
                
                Text("\(project!.about)")
                    .fontWeight(.light)
            }
        }//: VStack
        .frame(width: 320, height: framHeight, alignment: .center)
        .padding()
        .multilineTextAlignment(.center)
        .foregroundColor(.white)
        .background(LinearGradient(colors: gradient, startPoint: .topLeading, endPoint: .bottomTrailing))
        .containerShape(RoundedRectangle(cornerRadius: 16))
        .offset(y: isAnimating ? 0 : 90)
        .animation(.easeInOut(duration: 0.5), value: isAnimating)
        .onAppear {
            isAnimating.toggle()
        }
    }//: body
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(gradient: [Color("DarkGreen"), Color("Green")],leader: LeaderData[5], framHeight: 430)
    }
}

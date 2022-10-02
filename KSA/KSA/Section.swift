//
//  Section.swift
//  KSA
//
//  Created by Ruba Yahya on 30/09/2022.
//

import SwiftUI

struct Section: View {
    //Properties
    var colorName : String
    var text : String
    var imageName : String
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)

    //body
    var body: some View {
                HStack(alignment: .center) {
                    Spacer(minLength: 10)
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .padding(6)
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                        .shadow(color: .black.opacity(0.6), radius: 5, x: 3, y: 0 )
                        .frame(width: 90)
                        .fixedSize()
                    
                    Spacer(minLength: 4)
                    
                    Text(text)
                        .font(.system(size: 25, design: .rounded))
                        .fontWeight(.medium)
                    Spacer()
                     
                    Image(systemName: "chevron.right")
                        .padding(.horizontal, 10)
                        .fontWeight(.heavy)
                        .font(.title3)
                        .padding()
                    
                    Spacer()

                }//: HStack
            .frame(width: 350, height: 108, alignment: .center)
            .foregroundColor(.white)
            .background(Color(colorName))
            .containerShape(RoundedRectangle(cornerRadius: 16))
            .onDisappear{//need some improvment =)
                hapticImpact.impactOccurred()
                playSound(soundFile: "success", soundType: "m4a")
            }
          
    }//: body
}

struct Section_Previews: PreviewProvider {
    static var previews: some View {
        Section(colorName: "Red", text: "​​Identity Projects", imageName: "Di" )
    }
}

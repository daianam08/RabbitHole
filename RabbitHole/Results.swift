//
//  Results.swift
//  RabbitHole
//
//  Created by scholar on 6/4/23.
//

import SwiftUI

public func calcScore(right: Int, left: Int)-> String{
    if right > left{
        score.self = 0
        rightL.self = 0
        leftL.self = 0
        return "You seem to lean more conservative than liberal, according to your answers. Broaden your horizons! Try to read things with less bias on https://allsides.com."
    } else if left > right{
        score.self = 0
        rightL.self = 0
        leftL.self = 0
        return "You seem to lean more libeal than conservative, according to your answers. Broaden your horizons! Try to read things with less bias on https://allsides.com."
    } else{
        score.self = 0
        rightL.self = 0
        leftL.self = 0
        return "It seems as if you don't lean too conservative or liberal! You may be centrist, unbiased, or unstable 😅. You should still check out https://allsides.com for unbiased news."
    }
}

struct Results: View {
    @State private var finalans = ""
    @State private var biasL = ""
    @State private var buttonOff = "Let's see how you did!\n Click here."
    @State private var resultans = true
    var body: some View {
            NavigationStack{
            VStack{
                Image("logo")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Button(buttonOff){
                    if resultans{
                        if score.self >= 5{
                            finalans = "Congrats! It seems you have not fallen down the RabbitHole! You have little to no bias. Below is a summary of where you land on the American political spectrum."
                            buttonOff = " 🐇🕳️  "
                        } else if score.self >= 3{
                            finalans = "So close! You're hanging on to the edge of the RabbitHole! Below is a summary of where you land on the American political spectrum."
                            buttonOff = "🐰🕳️"
                        } else{
                            finalans = "Wowza! You're super biased and have defintely fallen down the RabbitHole! Below is a summary of where you land on the American political spectrum."
                            buttonOff = " 🕳️     "
                        }
                    }
                        biasL = calcScore(right: rightL.self, left: leftL.self)
                    resultans = false
//                    buttonOff = ""
                }//end button
                .tint(.white)
                .padding(7.0)
                .background(.green)
                .font(.title2)
                Text(finalans)
                    .padding()
                    .font(.title3)
                Text(biasL)
                    .padding()
                    .font(.title3)
            }
     
                    VStack{
                        Text("\n \n \n Click below once you view your score.")
                            .foregroundColor(.purple)
                    NavigationLink(destination: ContentView()){
                        Text("Back to Home")
                            .padding(7.0)
                            .tint(.black)
                            .background(.yellow)
                            .border(.yellow, width: 3)
                            .cornerRadius(0.20)
                    }
                }
            }//end navstack
            .navigationBarBackButtonHidden(true)
    }
}

struct Results_Previews: PreviewProvider {
    static var previews: some View {
        Results()
    }
}

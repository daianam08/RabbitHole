//
//  Q2.swift
//  RabbitHole
//
//  Created by scholar on 6/2/23.
//

import SwiftUI

struct Q2: View {
    @State private var q2ans = ""
    @State private var q2on = true
    var body: some View {
        NavigationStack{
            VStack{
                Text("Without having read the article, which headline exhibits the least amount of bias?")
                    .font(.title)
                    .padding()
                Image("q2img")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Text("A. Trump says he told Hannity not to joke about Biden’s cognitive ability.")
                Text("B. Trump dismisses 2024 GOP rivals, rips DeSantis for insisting a two-term president is needed.")
                Text("C. Donald Trump's Iowa town hall: Attacks on Ron DeSantis, Joe Biden and criminal charges")
                HStack{
                    Button("A"){
                        if q2on{
                            score+=1
                            q2ans = "You got it! This headline, compared to the other two, shows less words tied to emotion or assumed action. The headline focused on Trump's words specifically."
                            q2on = false
                        }
                    }
                    Button("B"){
                        if q2on{
                            rightL += 1
                            q2ans = "Not quite. Using the word 'rips' is implying or assuming intention behind Trump's words."
                            q2on = false
                        }
                    }
                    Button("C"){
                        if q2on{
                            leftL += 1
                            score+=1
                            q2ans = "Nope! Using the word 'attacks' should have been a give-away since it is implying or assuming intention behind Trump's words."
                            q2on = false
                        }
                    }
                }//end hstack
                Text(q2ans)
                if q2on == false {
                    NavigationLink(destination: Q3()){
                        Text("Next")
                        .padding(7.0)
                        .tint(.black)
                        .background(.yellow)
                        .border(.yellow, width: 3)
                    }
                }
            }//end vstack
            .padding()
        }//end navstack
        .navigationBarBackButtonHidden(true)
    }
}

struct Q2_Previews: PreviewProvider {
    static var previews: some View {
        Q2()
    }
}

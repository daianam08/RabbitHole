//
//  Q5.swift
//  RabbitHole
//
//  Created by scholar on 6/2/23.
//

import SwiftUI

struct Q5: View {
    @State private var q5ans = ""
    @State private var q5on = true
    var body: some View {
            NavigationStack{
                VStack{
                    Text("Which phrase is the intention of the Black Lives Matter community?")
                        .font(.title)
                        .padding()
                    Image("q5img")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Text("A. Black Lives (also) Matter.")
                    Text("B. Black Lives (only) Matter.")
                    HStack{
                        Button("A"){
                            if q5on{
                                leftL += 1
                                score += 1
                                q5ans = "Correct. BLM members and supporters usually stand up against the disparity between how black Americans are treated versus other races, primarily white Americans. They want to show that Black Lives are just as important as White Lives."
                                q5on = false
                            }
                        }
                        Button("B"){
                            if q5on{
                                rightL += 1
                                q5ans = "Incorrect. BLM members and supporters have pointed out that they don't believe any lives are more or less important, but that the intention of the movement is to stand up against discrimination and inequity that exists against black communities."
                                q5on = false
                            }
                        }
                    }//end hstack
                    Text(q5ans)
                    if q5on == false {
                        NavigationLink(destination: Q6()){
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

struct Q5_Previews: PreviewProvider {
    static var previews: some View {
        Q5()
    }
}

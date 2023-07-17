//
//  Q1.swift
//  RabbitHole
//
//  Created by scholar on 5/31/23.
//

import SwiftUI

struct Q1: View {
    @State private var q1ans = ""
    @State private var q1on = true
    var body: some View {
        NavigationStack{
            VStack{
                Text("Is this image real or fake?")
                    .font(.title)
                    .padding()
                Image("q1img")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                HStack{
                    Button("Real"){
                        if q1on{
                            score+=1
                            q1ans = "Great! These are called lenticular clouds. A quick search on the internet of 'types of clouds' would help you see that these clouds exist."
                            q1on = false
                        }
                    }
                    Button("Fake"){
                        if q1on{
                            rightL += 1
                            leftL += 1
                            q1ans = "Oof, this is a real picture. A quick search on the internet of 'types of clouds' would help you see that these clouds exist."
                            q1on = false
                        }
                    }

                }//end hstack
                Text(q1ans)
                if q1on == false {
                    NavigationLink(destination: Q2()){
                        Text("Next")
                        .padding(7.0)
                        .tint(.black)
                        .background(.yellow)
                        .border(.yellow, width: 3)
                    }
                }
            }//end vstack
        }//end navstack
        .navigationBarBackButtonHidden(true)

    }
}

struct Q1_Previews: PreviewProvider {
    static var previews: some View {
        Q1()
    }
}

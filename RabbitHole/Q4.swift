//
//  Q4.swift
//  RabbitHole
//
//  Created by scholar on 6/2/23.
//

import SwiftUI

struct Q4: View {
    @State private var q4ans = ""
    @State private var q4img = "q4img1"
    @State private var q4on = true
    var body: some View {
        NavigationStack{
            VStack{
                Text("Is this image real or fake?")
                    .font(.title)
                    .padding()
                Image(q4img)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                HStack{
                    Button("Real"){
                        rightL += 1
                        leftL += 1
                        q4img = "q4img"
                        if q4on{
                            q4ans = "Sorry buddy, this is Photoshopped. Besides, the person in the image and the wave of rice have 2 different light sources!"
                            q4on = false
                        }
                    }
                    Button("Fake"){
                        q4img = "q4img"
                        if q4on{
                            score+=1
                            q4ans = "Correct! That just seems impossible and too good to be true."
                            q4on = false
                        }
                    }
                }//end hstack
                Text(q4ans)
                if q4on == false {
                    NavigationLink(destination: Q5()){
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

struct Q4_Previews: PreviewProvider {
    static var previews: some View {
        Q4()
    }
}

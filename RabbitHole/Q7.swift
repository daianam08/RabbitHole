//
//  Q7.swift
//  RabbitHole
//
//  Created by scholar on 6/4/23.
//

import SwiftUI

struct Q7: View {
    @State private var q7ans = ""
    @State private var q7img = "q7img1"
    @State private var q7on = true
    var body: some View {
        NavigationStack{
            VStack{
                Text("Is this image real or fake?")
                    .font(.title)
                    .padding()
                Image(q7img)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                HStack{
                    Button("Real"){
                        rightL += 1
                        leftL += 1
                        q7img = "q7img"
                        if q7on{
                            q7ans = "Sorry, this is Photoshopped.Though dwarf animals exist, this one was a fake."
                            q7on = false
                        }
                    }
                    Button("Fake"){
                        q7img = "q7img"
                        if q7on{
                            score+=1
                            q7ans = "Correct! Good eye!"
                            q7on = false
                        }
                    }
                }//end hstack
                Text(q7ans)
                if q7on == false {
                    NavigationLink(destination: Results()){
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

struct Q7_Previews: PreviewProvider {
    static var previews: some View {
        Q7()
    }
}

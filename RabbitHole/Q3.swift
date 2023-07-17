//
//  Q3.swift
//  RabbitHole
//
//  Created by scholar on 6/2/23.
//

import SwiftUI

struct Q3: View {
    @State private var q3ans = ""
    @State private var q3on = true
    var body: some View {
        NavigationStack{
            VStack{
                Text("Without having read the article, which headline exhibits the least amount of bias?")
                    .font(.title)
                    .padding()
                Image("q3img")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Text("A. What the Republican Party push for 'Parents' Rights' is really about.")
                Text("B. DeSantis limits trans treatments, drag shows, pronoun use in Florida.")
                Text("C. Florida and Texas defend kids against Gender Madness.")
                HStack{
                    Button("A"){
                        if q3on{
                            leftL += 1
                            q3ans = "Incorrect! This headline shows that the article will tell their readers what they believe is the actual meaning of the Republican's words. Instead of focusing on the issue, they are digging deeper into a political party's opinion and quite possibly making their own assumptions."
                            q3on = false
                        }
                    }
                    Button("B"){
                        if q3on{
                            score+=1
                            q3ans = "This one was tricky! DeSantis set actual limits to these LGBTQIA+ issues."
                            q3on = false
                        }
                    }
                    Button("C"){
                        if q3on{
                            rightL += 1
                            score+=1
                            q3ans = "Very wrong... Using the word 'madness' to describe gendering disrespects the LGBTQIA+ movement and its people."
                            q3on = false
                        }
                    }
                }//end hstack
                Text(q3ans)
                if q3on == false {
                    NavigationLink(destination: Q4()){
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

struct Q3_Previews: PreviewProvider {
    static var previews: some View {
        Q3()
    }
}

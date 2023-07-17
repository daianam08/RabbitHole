//
//  Q6.swift
//  RabbitHole
//
//  Created by scholar on 6/4/23.
//

import SwiftUI

struct Q6: View {
    @State private var q6ans = ""
    @State private var q6on = true
    var body: some View {
            NavigationStack{
                VStack{
                    Text("Which article snipet about the Los Angeles, CA, teachers' union decision to go on strike in March 2023 shows the least amount of bias?")
                        .font(.title)
                        .padding()
                    Text("A. The LAUS [teachers' union] decided to go on strike, bravely standing up for their right to a fair contract. \n")
                    Text("B. The greedy LAUS [teachers' union] decided to go on strike, despite the fact that it will cost the city $100 million for a 3-day shut down. \n")
                    Text("C. The LAUS [teachers' union] granted teachers the right to strike for 3 days to demand a fair contract, a decision which may cost the city $100 million. \n")
                    HStack{
                        Button("A"){
                            if q6on{
                                leftL += 1
                                q6ans = "Incorrect. The snipet adds 'bravely' as a descriptor of the actions of the LAUS. This adjective does not add to the article. It also fails to mention the amount of money it would cost the city, possibly downplaying a consequence of the strike."
                                q6on = false
                            }
                        }
                        Button("B"){
                            if q6on{
                                rightL += 1
                                q6ans = "Incorrect. The snipet adds 'greedy' as a descriptor of the actions of the LAUS. This adjective does not add to the article. The article also seems to blame the teachers' strike for the city losing money by choosing words such as 'despite the fact'."
                                q6on = false
                            }
                        }
                        Button("C"){
                            if q6on{
                                score+=1
                                q6ans = "Correct! This snipet does not use descriptors for the teachers' union and focuses on providing information in a more factual format, rather than acusatory towards any party."
                                q6on = false
                            }
                        }
                    }//end hstack
                    Text(q6ans)
                    if q6on == false {
                        NavigationLink(destination: Q7()){
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

struct Q6_Previews: PreviewProvider {
    static var previews: some View {
        Q6()
    }
}

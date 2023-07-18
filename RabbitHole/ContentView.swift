//
//  ContentView.swift
//  RabbitHole
//
//  Created by scholar on 5/28/23.
//
import SwiftUI
//yerrrr
public var score = 0
public var rightL = 0
public var leftL = 0

public let backgroundGradient = LinearGradient(
    colors: [Color.green, Color.blue],
    startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    var body: some View {
        NavigationStack{
        ZStack{
            backgroundGradient
//            Color(red: 0.7, green: 0.4, blue: 0.7)
                .ignoresSafeArea()
            VStack{//vstack1
                Image("logo")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding()
//                Spacer()
                    //don't understand why everything gets pushed down when i move navstack up
                    //also dont understand why navstack cant be colored as well
                    VStack{//vstack2
                        /*
                         How i added font below, doesnt work:
                         https://betterprogramming.pub/swiftui-basics-importing-custom-fonts-b6396d17424d#:~:text=Add%20Your%20Custom%20Font%20Files&text=SwiftUI%20supports%20file%20formats%20.,be%20using%20into%20that%20folder.
                         */
                        
                        Text("Can you survive without going down the Internet Rabbithole?")
                            .font(.title)
                        //                    .font(.custom("PoetsenOne-Regular", size: 27))
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .padding(10)
                        Text("Test your detection skills in the game of RabbitHole to see if you can detect bias, conspiracies, or just straight-up BS!")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .padding(10)
                        NavigationLink(destination: Q1()){
                            Text("START")
                                .font(.title)
                                .tint(.black)
                                .padding()
                                .background(.yellow)
                                .border(Color.yellow, width: 3)
                                .cornerRadius(20)
                            
                        }//end nav link
                        .navigationBarBackButtonHidden(true)
                        NavigationLink(destination: AboutUs()){
                            Text("About This App")
                                .font(.title2)
                                .tint(.black)
                                .padding()
                                .background(.green)
                                .border(Color.green, width: 2)
                                .cornerRadius(20)
                        }//end navlink 2
                        Text("Note: This survey only works if you answer all questions as honestly as possible.")
                    } //end vstack2
                }//end nav stack
            }//end vstack1
        }//end zstack
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

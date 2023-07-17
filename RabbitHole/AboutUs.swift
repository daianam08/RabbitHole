//
//  AboutUs.swift
//  RabbitHole
//
//  Created by scholar on 5/31/23.
//

import SwiftUI

struct AboutUs: View {
    var body: some View {
        VStack{
            Image("logo")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding()
            Text("This app was inspired by the polarization that has occured in the USA over the past decade but was exacerbated during the 2016 and 2020 election seasons. Greater polarization occured during the COVID-19 pandemic lockdowns, causing many people to turn to the internet to answer questions, causing many people to go down dangerous rabbit holes that may have lead to conspiracy theories and a solidification of extreme idiologies. \n \nI myself was a victim of the rabbit hole phenomena! At one point, I went so far left that I considered myself a communist, while others went the far opposite direction. This app is designed to test if you are able to discern if images, article titles, and more are real, fake, biased, unbiased, or just straight-up BS. \n \n Sources used: \n https://www.allsides.com \n https://www.boredpanda.com")
                .padding()
        }
    }
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
    }
}

/*
 Resources:
 images: https://www.boredpanda.com/fake-news-photos-viral-photoshop/?utm_source=google&utm_medium=organic&utm_campaign=organic
 
 https://www.boredpanda.com/mind-bending-photos-real-no-photoshop/?utm_source=google&utm_medium=organic&utm_campaign=organic
 
 Article:
 
 
 */

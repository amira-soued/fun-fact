//
//  ContentView.swift
//  facts
//
//  Created by MacBook Pro on 20/08/2021.
//

import SwiftUI

struct ContentView: View {
    
        let facts = ["Octopuses have three hearts." , "Tigers’ skin is actually striped, just like their fur. Also, no two fur patterns are alike." , "The 100 folds in a chef's hat represent 100 ways to cook an egg." , "The moon has moonquakes.", "Marie Curie is the only person to earn a Nobel prize in two different sciences.", "Like humans, koalas actually have unique individual fingerprints.", "Dogs have a dominant paw like humans have a dominant left or right hand.", "Vatican City is actually the smallest country in the world." , "New York’s Central Park is bigger than Monaco.","One day on Venus is almost 8 months on Earth. " ]
       @State var photo = "background1"
       @State var randFact = 0
       
       var body: some View {
           
           ZStack{
               Image(photo)
               VStack {
                   Text("Did you know?")
                       .font(.headline)
                       .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                       .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
                   
               Text(facts[randFact])
                   .font(.title)
                   .foregroundColor(Color.white)
                   .multilineTextAlignment(.center)
                   .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                   .frame(width: 300, height: 300.0)
               
               
                   Button(action: {
                       let back = Int.random(in: 1...7)
                       photo = "background" + String(back)
                       let R = Int.random(in: 0...9)
                       randFact = R
                   }, label: {
                       VStack{
                       Text("New fact")
                           .font(.title3)
                           .foregroundColor(Color.white)
                           .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/).opacity(0.6).border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: 0)
                           .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                       }
                      
                   })
               }
                   
           }
           
       }
       
   }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

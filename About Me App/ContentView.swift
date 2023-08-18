//
//  ContentView.swift
//  About Me App
//
//  Created by scholar on 8/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var factText = "Click to generate random fact"
    
    var body: some View {
        
        //Create an app that allows the user to press a button and generate random facts about me
        
        let randomFacts = ["I was born and raised in New York", "My favorite color is indigo", "My favorite food is ramen", "I have an older sister", "I have a cat named Mushu", "I love to make origami", "I love to learn about space", "I love to read", "I want to travel to Japan"]
        
        
        VStack {
            Text("H")
            Text("About Me")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
                .padding(10)
            
            Spacer()
            
            Image("me")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(50).padding()
            
            Spacer(minLength: 250)
            
            Text("Click the image above to see more pics!")
            
            
            Text(factText)
            
            Button("Click me") {
                let fact = randomFacts.randomElement()!
                
                factText = fact
                
            }.buttonStyle(.borderedProminent)
            
            
        }
    }
}
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }


//
//  ContentView.swift
//  DiceSwiftUI
//
//  Created by Alireza Soltani Neshan on 1/8/1400 AP.
//

import SwiftUI
a
struct ContentView: View {
    @State var text = "Hello, World!"
    @State var textState = false
    @State var randomNumber: Int?
    var body: some View {
        NavigationView{
            ScrollView {
                VStack {
                    Text(text)
                        .padding()
                    Button(action: {
                        if (!textState) {
                            self.text = "Alireza Soltani Neshan"
                            self.textState = true
                        } else {
                            self.text = "Hello, World!"
                            self.textState = false
                        }
                     
                    }) {
                        Text("Tap to show your name")
                    }
                    .padding(50)
                    Divider()
                    Text("Your created random number \(randomNumber ?? 0)")
                        .padding(50)
                    Button(action: {
                        self.randomNumber = Int.random(in: 1...1000)
                    }, label: {
                        Text("Create random number")
                    })
                }.navigationTitle(Text("Home"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  H4XOR News
//
//  Created by Alireza Soltani Neshan on 1/9/1400 AP.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            if(networkManager.posts.isEmpty){
                ProgressView()
            } else {
                List(networkManager.posts) { post in
                    VStack {
                        NavigationLink(
                            destination: DetailsView(url: post.url, titleOfNews: post.title),
                            label: {
                                Text(post.title)
                                    .font(.title2)
                            })
                    }
                }
                .navigationTitle("H4XOR News")
            }
            
        }
        .onAppear{
            networkManager.gettingData()
            print(networkManager.posts.isEmpty == true ? "Alireza" : "Dorsa")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



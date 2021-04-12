//
//  ContentView.swift
//  HandyDesign
//
//  Created by Alireza Soltani Neshan on 1/9/1400 AP.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            ScrollView {
                VStack(spacing: 0) {
                    Text("app of the day".uppercased())
                        .font(.largeTitle).bold()
                        .frame(maxWidth: 150, maxHeight: .infinity, alignment: .bottomLeading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    
                    HStack (spacing: 10) {
                        Image(uiImage: #imageLiteral(resourceName: "logo"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .cornerRadius(10)
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Design Code")
                                .font(.body).bold()
                            Text("SwiftUI, React, Flutter, UI Design")
                                .font(.caption)
                        }
                        .foregroundColor(.white)
                        Spacer()
                        
                    }.frame(maxWidth: .infinity)
                    .padding(12)
                    .background(Color.black.opacity(0.8))
                    
                }.frame(width: .infinity, height: 335)
                .background(
                    Image(uiImage: #imageLiteral(resourceName: "imgBg"))
                        .resizable()
                        .aspectRatio(contentMode: .fill))
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(color: Color.black.opacity(0.3), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                .padding()
            }
            
            .navigationTitle("Today")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

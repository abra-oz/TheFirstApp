//
//  ContentView.swift
//  Week4App
//
//  Created by Student on 9/2/20.
//  Copyright © 2020 Student. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var data: UserData
    
    var body: some View {
        VStack {
            Text("Abra's First Program")
                .font(.title)
                .fontWeight(.black)
                .padding(10.0)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .shadow(radius: 3)
                .background(Color.purple)
            Button(action: {
                self.data.counter += 1
                if self.data.counter > 25 {
                    self.data.counter = 0
                }
            }) {
                Text("Counter = " + String(self.data.counter))
            }
            .padding(20.0)
            .background(Color.black)
            .cornerRadius(7.0)
            
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $data.userInput)
                .padding(10.0)

        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}

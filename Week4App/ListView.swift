//
//  ListView.swift
//  Week4App
//
//  Created by Student on 9/2/20.
//  Copyright © 2020 Student. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List() {
                Text("First thing")
                Text("Second thing")
                NavigationLink(destination: ContentView()){
                    Text("Your Going Places")
                }
            }
            .navigationBarTitle(Text("Title thing."))
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

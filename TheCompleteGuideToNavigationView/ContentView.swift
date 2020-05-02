//
//  ContentView.swift
//  TheCompleteGuideToNavigationView
//
//  Created by Ramill Ibragimov on 02.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ResultView: View {
    var choice: String
    
    var body: some View {
        Text("You choise \(choice)")
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("You're going to flip a coin - do you want to choose  heads or tails?")
                
                NavigationLink(destination: ResultView(choice: "Heads")) {
                    Text("Choose Heads")
                }
                
                NavigationLink(destination: ResultView(choice: "Tails")) {
                    Text("Choose Tails")
                }
            }
            .navigationBarTitle("Navigation", displayMode: .automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

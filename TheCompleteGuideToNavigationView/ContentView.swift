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
            NavigationLink(destination: Text("Second View")) {
                //Text("Hello, World!")
                Image("camera")
                    .renderingMode(.original)
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

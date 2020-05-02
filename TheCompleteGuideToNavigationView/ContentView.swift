//
//  ContentView.swift
//  TheCompleteGuideToNavigationView
//
//  Created by Ramill Ibragimov on 02.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

class User: ObservableObject {
    @Published var score = 0
}

struct ChangeView: View {
    @EnvironmentObject var user: User
    
    var body: some View {
        VStack {
            Text("Score: \(user.score)")
            Button("Increase") {
                self.user.score += 1
            }
        }
    }
}

struct ContentView: View {
    @ObservedObject var user = User()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("Score: \(user.score)")
                
                NavigationLink(destination: ChangeView()) {
                    Text("Show Detail View")
                }
            }
            .navigationBarTitle("Navigation")
        }.environmentObject(user)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

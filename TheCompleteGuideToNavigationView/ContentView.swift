//
//  ContentView.swift
//  TheCompleteGuideToNavigationView
//
//  Created by Ramill Ibragimov on 02.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var score = 0
    
    var body: some View {
        NavigationView {
            Text("Score: \(score)")
                .navigationBarTitle("Navigation")
                .navigationBarItems(
                    leading:
                        Button("Subsctract 1") {
                            self.score -= 1
                        },
                    
                    trailing:
                        Button("Add 1") {
                            self.score += 1
                        }
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

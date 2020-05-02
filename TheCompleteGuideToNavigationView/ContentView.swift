//
//  ContentView.swift
//  TheCompleteGuideToNavigationView
//
//  Created by Ramill Ibragimov on 02.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: String? = nil
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                NavigationLink(destination: Text("Second View"), tag: "Second", selection: $selection) {
                    EmptyView()
                }
                
                NavigationLink(destination: Text("Third View"), tag: "Third", selection: $selection) {
                    EmptyView()
                }
                
                Button("Tap to show Second detail") {
                    self.selection = "Second"
                }
                
                Button("Tap to show Third detail") {
                    self.selection = "Third"
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

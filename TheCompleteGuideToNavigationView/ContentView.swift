//
//  ContentView.swift
//  TheCompleteGuideToNavigationView
//
//  Created by Ramill Ibragimov on 02.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                NavigationLink(destination: Text("Second View"), isActive: $isShowingDetailView) {
                    EmptyView()
                }
                
                Button("Tap to show detail") {
                    self.isShowingDetailView = true
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

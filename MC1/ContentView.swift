//
//  ContentView.swift
//  MC1
//
//  Created by Shalomeira Winata on 01/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            // TAB BAR
            TabView {
                ScanView()
                    .ignoresSafeArea(.container, edges: [.top, .bottom])
                    .safeAreaInset(edge: .top, alignment: .center, spacing: 0) {
                        Color.clear
                            .frame(height: 0)
                            .background(.ultraThinMaterial)
                    }
                    .safeAreaInset(edge: .bottom, alignment: .center, spacing: 0) {
                        Color.clear
                            .frame(height: 0)
                            .background(.thickMaterial)
                    }
                    .tabItem {
                        Label("Scan", systemImage: "camera.viewfinder")
                    }
                ProduceView()
                    .safeAreaInset(edge: .bottom, alignment: .center, spacing: 0) {
                        Color.clear
                            .frame(height: 0)
                            .background(.thickMaterial)
                    }
                    .tabItem {
                        Label("All Produce", systemImage: "leaf.fill")
                    }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
            TabView {
                ScanView()
                    .tabItem {
                        Label("Scan", systemImage: "camera.viewfinder")
                    }
                ProduceView()
                    .tabItem {
                        Label("All Produce", systemImage: "leaf.fill")
                    }
//                RecipeView()
//                    .tabItem {
//                        Label("Recipes", systemImage: "frying.pan")
//                    }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  RecipeView.swift
//  MC1
//
//  Created by Shalomeira Winata on 01/04/23.
//

import SwiftUI

struct RecipeView: View {
    @State private var searchQuery = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Search", text: $searchQuery)
                    .padding(.horizontal,30)
                    .padding(.vertical,8)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding()
                    .overlay(
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .padding(.leading, 20)
                                Spacer()
                            }
                        )
                ScrollView(.vertical){
                    
                }
            }
        
            
        .navigationTitle("Recipes")
        }
       
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}

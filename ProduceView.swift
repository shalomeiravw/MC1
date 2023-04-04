//
//  ProduceView.swift
//  MC1
//
//  Created by Shalomeira Winata on 01/04/23.
//

import SwiftUI

struct Box{
    var id: Int
    let title, imageUrl: String
}
struct Box2{
    var id: Int
    let title, imageUrl: String
}
struct Box3{
    var id: Int
    let title, imageUrl: String
}
struct Box4{
    var id: Int
    let title, imageUrl: String
}

struct ProduceView: View {
    @State private var searchQuery = ""
    
    //items array
    let boxes:[Box] = [
        Box(id: 0, title: "Apple", imageUrl: "apple"),
        Box(id: 1, title: "Avocado", imageUrl: "avocado"),
        Box(id: 2, title: "Banana", imageUrl: "banana"),
        Box(id: 3, title: "Orange", imageUrl: "orange"),
        Box(id: 4, title: "Strawberry", imageUrl: "strawberry")
    ]
    let boxes2:[Box2] = [
        Box2(id: 0, title: "Broccolli", imageUrl: "broccolli"),
        Box2(id: 1, title: "Carrot", imageUrl: "carrot"),
        Box2(id: 2, title: "Cauliflower", imageUrl: "cauliflower"),
        Box2(id: 3, title: "Spinach", imageUrl: "spinach"),
        Box2(id: 4, title: "Tomato", imageUrl: "tomato")
    ]
    let boxes3:[Box3] = [
        Box3(id: 0, title: "Chicken", imageUrl: "chicken"),
        Box3(id: 1, title: "Cow", imageUrl: "cow"),
        Box3(id: 2, title: "Lamb", imageUrl: "lamb"),
        Box3(id: 3, title: "Turkey", imageUrl: "turkey")
    ]
    let boxes4:[Box4] = [
        Box4(id: 0, title: "Salmon", imageUrl: "salmon"),
        Box4(id: 1, title: "Shrimp", imageUrl: "shrimp"),
        Box4(id: 2, title: "Squid", imageUrl: "squid")
    ]
    
    //filter results starting w a specific letter
    var filteredBoxes: [Box] {
        boxes.filter { box in
            searchQuery.isEmpty ||
            (box.title.lowercased().starts(with: searchQuery.lowercased()) &&
             box.title.lowercased().first == searchQuery.lowercased().first)
        }
    }
    var filteredBoxes2: [Box2] {
        boxes2.filter { box in
            searchQuery.isEmpty ||
            (box.title.lowercased().starts(with: searchQuery.lowercased()) &&
             box.title.lowercased().first == searchQuery.lowercased().first)
        }
    }
    var filteredBoxes3: [Box3] {
        boxes3.filter { box in
            searchQuery.isEmpty ||
            (box.title.lowercased().starts(with: searchQuery.lowercased()) &&
             box.title.lowercased().first == searchQuery.lowercased().first)
        }
    }
    var filteredBoxes4: [Box4] {
        boxes4.filter { box in
            searchQuery.isEmpty ||
            (box.title.lowercased().starts(with: searchQuery.lowercased()) &&
             box.title.lowercased().first == searchQuery.lowercased().first)
        }
    }
    
    var isSearchBarEmpty: Bool{
        searchQuery.isEmpty
    }
    
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
                ScrollView(.vertical) {
                    VStack(alignment: .leading){
                        HStack{
                            Text("Fruits")
                                .font(.system(size:24, weight:.bold))
                                .padding(.leading)
                            if isSearchBarEmpty {
                                NavigationLink(destination: MoreFruits(boxes: boxes)){
                                    Text("See More")
                                        .font(.system(size:14))
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .padding(.trailing,20)
                                }
                            }
                        }
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(filteredBoxes, id: \.id) { box in
                                    NavigationLink(destination: EachView(box: box, box2: nil, box3: nil, box4: nil)) {
                                        BoxView(box: box)
                                    }
                                }
                            }
                            .padding(5)
                        }
                        .padding()
                        
                        HStack{
                            Text("Vegetables")
                                .font(.system(size:24, weight:.bold))
                                .padding(.leading)
                            if isSearchBarEmpty{
                                NavigationLink(destination: MoreVeg(boxes2: boxes2)){
                                    Text("See More")
                                        .font(.system(size:14))
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .padding(.trailing,20)
                                }
                            }
                        }
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(filteredBoxes2, id: \.id) { box in
                                    NavigationLink(destination: EachView(box: nil, box2: box, box3: nil, box4: nil)) {
                                        BoxView2(box: box)
                                    }
                                }
                            }
                            .padding(5)
                        }
                        .padding()
                        
                        HStack{
                            Text("Meat & Poultry")
                                .font(.system(size:24, weight:.bold))
                                .padding(.leading)
                            if isSearchBarEmpty{
                                NavigationLink(destination: MoreMeat(boxes3: boxes3)){
                                    Text("See More")
                                        .font(.system(size:14))
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .padding(.trailing,20)
                                }
                            }
                        }
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(filteredBoxes3, id: \.id) { box in
                                    NavigationLink(destination: EachView(box: nil, box2:nil, box3: box, box4: nil)) {
                                        BoxView3(box: box)
                                    }
                                }
                            }
                            .padding(5)
                        }
                        .padding()
                        
                        HStack{
                            Text("Seafood")
                                .font(.system(size:24, weight:.bold))
                                .padding(.leading)
                            if isSearchBarEmpty{
                                NavigationLink(destination: MoreSea(boxes4: boxes4)){
                                    Text("See More")
                                        .font(.system(size:14))
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .padding(.trailing,20)
                                }
                            }
                        }
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(filteredBoxes4, id: \.id) { box in
                                    NavigationLink(destination: EachView(box: nil, box2:nil, box3: nil, box4: box)) {
                                        BoxView4(box: box)
                                    }
                                }
                            }
                            .padding(5)
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("All Produce")
        }
    }
    
    //shows the image and caption
    struct BoxView: View{
        let box: Box
        var body: some View{
            VStack{
                Image("\(box.imageUrl)")
                    .resizable()
                    .cornerRadius(40)
                    .frame(width: 80, height: 80)
                Text(box.title)
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
        }
    }
    struct BoxView2: View{
        let box: Box2
        var body: some View{
            VStack{
                Image("\(box.imageUrl)")
                    .resizable()
                    .cornerRadius(40)
                    .frame(width: 80, height: 80)
                Text(box.title)
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
        }
    }
    struct BoxView3: View{
        let box: Box3
        var body: some View{
            VStack{
                Image("\(box.imageUrl)")
                    .resizable()
                    .cornerRadius(40)
                    .frame(width: 80, height: 80)
                Text(box.title)
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
        }
    }
    struct BoxView4: View{
        let box: Box4
        var body: some View{
            VStack{
                Image("\(box.imageUrl)")
                    .resizable()
                    .cornerRadius(40)
                    .frame(width: 80, height: 80)
                Text(box.title)
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
        }
    }
    
    struct ProduceView_Previews: PreviewProvider {
        static var previews: some View {
            ProduceView()
        }
    }
}

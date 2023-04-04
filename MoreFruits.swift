//
//  MoreFruits.swift
//  MC1
//
//  Created by Shalomeira Winata on 01/04/23.
//

import SwiftUI

struct MoreFruits: View {
    let boxes: [Box]
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]

    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(boxes, id: \.id) { box in
                                NavigationLink(destination: EachView(box: box, box2: nil, box3: nil, box4: nil)){
                                    BoxView(box: box)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
        .padding(.top,30)
        .navigationTitle("Fruits")
        .navigationBarTitleDisplayMode(.inline)
    }
}

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

struct MoreFruits_Previews: PreviewProvider {
    static var previews: some View {
        MoreFruits(boxes: [Box(id: 0, title: "Apple", imageUrl: "apple")])
    }
}

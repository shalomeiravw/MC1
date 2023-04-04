//
//  MoreVeg.swift
//  MC1
//
//  Created by Shalomeira Winata on 01/04/23.
//

import SwiftUI

struct MoreVeg: View {
    let boxes2: [Box2]
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(boxes2, id: \.id) { box in
                                NavigationLink(destination: EachView(box: nil, box2: box, box3: nil, box4: nil)){
                                    BoxView2(box: box)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
        .padding(.top,30)
        .navigationTitle("Vegetables")
        .navigationBarTitleDisplayMode(.inline)
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

struct MoreVeg_Previews: PreviewProvider {
    static var previews: some View {
        MoreVeg(boxes2: [Box2(id: 0, title: "Broccolli", imageUrl: "broccolli")])
    }
}

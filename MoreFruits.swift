//
//  MoreFruits.swift
//  MC1
//
//  Created by Shalomeira Winata on 01/04/23.
//

import SwiftUI

struct MoreFruits: View {
    let boxes: [Box]
    
    var body: some View {
        List{
            ForEach(boxes, id: \.id) { box in
                NavigationLink(destination:
                                EachView(box: box, box2: nil, box3: nil, box4: nil)){
                    BoxView(box: box)
                }
            }
        }
        .navigationTitle("Fruits")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BoxView: View{
    let box: Box
    var body: some View{
        HStack{
            Image("\(box.imageUrl)")
                .resizable()
                .cornerRadius(40)
                .frame(width: 80, height: 80)
            Text(box.title)
                .padding(.leading,20)
                .font(.title2)
                .foregroundColor(.black)
        }
    }
}

struct MoreFruits_Previews: PreviewProvider {
    static var previews: some View {
        MoreFruits(boxes: [Box(id: 0, title: "Apple", imageUrl: "apple")])
    }
}

//
//  MoreVeg.swift
//  MC1
//
//  Created by Shalomeira Winata on 01/04/23.
//

import SwiftUI

struct MoreVeg: View {
    let boxes2: [Box2]
    
    var body: some View {
        List{
            ForEach(boxes2, id: \.id) { box in
                NavigationLink(destination:
                                EachView(box: nil, box2: box, box3: nil, box4: nil)){
                    BoxView2(box: box)
                }
            }
        }
        .navigationTitle("Vegetables")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BoxView2: View{
    let box: Box2
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

struct MoreVeg_Previews: PreviewProvider {
    static var previews: some View {
        MoreVeg(boxes2: [Box2(id: 0, title: "Broccolli", imageUrl: "broccolli")])
    }
}

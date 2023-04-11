//
//  MoreMeat.swift
//  MC1
//
//  Created by Shalomeira Winata on 01/04/23.
//

import SwiftUI

struct MoreMeat: View {
    let boxes3: [Box3]
    
    var body: some View {
        List{
            ForEach(boxes3, id: \.id) { box in
                NavigationLink(destination:
                                EachView(box: nil, box2: nil, box3: box, box4: nil)){
                    BoxView3(box: box)
                }
            }
        }
        .navigationTitle("Meat & Poultry")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BoxView3: View{
    let box: Box3
    var body: some View{
        HStack{
            Image("\(box.imageUrl)")
                .resizable()
                .cornerRadius(40)
                .frame(width: 80, height: 80)
            Text(box.title)
                .padding(.leading,20)
                .font(.title2)
                .foregroundColor(Color.primary)
        }
    }
}

struct MoreMeat_Previews: PreviewProvider {
    static var previews: some View {
        MoreMeat(boxes3: [Box3(id: 0, title: "Chicken", imageUrl: "chicken")])
    }
}

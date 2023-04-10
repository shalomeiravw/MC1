//
//  MoreSea.swift
//  MC1
//
//  Created by Shalomeira Winata on 01/04/23.
//

import SwiftUI

struct MoreSea: View {
    let boxes4: [Box4]
    
    var body: some View {
       
        List{
            ForEach(boxes4, id: \.id) { box in
                NavigationLink(destination:
                                EachView(box: nil, box2: nil, box3: nil, box4: box)){
                    BoxView4(box: box)
                }
            }
        }
        .navigationTitle("Seafood")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BoxView4: View{
    let box: Box4
    var body: some View{
        HStack{
            Image("\(box.imageUrl)")
                .resizable()
                .cornerRadius(40)
                .frame(width: 80, height: 80)
            Text(box.title)
                .font(.title3)
                .padding(.leading,10)
                .foregroundColor(.black)
        }
    }
}

struct MoreSea_Previews: PreviewProvider {
    static var previews: some View {
        MoreSea(boxes4: [Box4(id: 0, title: "Salmon", imageUrl: "salmon")])
    }
}

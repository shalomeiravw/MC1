//
//  MoreSea.swift
//  MC1
//
//  Created by Shalomeira Winata on 01/04/23.
//

import SwiftUI

struct MoreSea: View {
    let boxes4: [Box4]
    let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    //    let columns = [
    //        GridItem(.flexible()),
    //        GridItem(.flexible()),
    //        GridItem(.flexible()),
    //        GridItem(.flexible())
    //    ]
    
    var body: some View {
        //        ScrollView(.vertical) {
        //            LazyVGrid(columns: columns, spacing: 20) {
        //                ForEach(boxes4, id: \.id) { box in
        //                    NavigationLink(destination: EachView(box: nil, box2: nil, box3: nil, box4: box)){
        //                        BoxView4(box: box)
        //                    }
        //                }
        //            }
        //            .padding(.horizontal)
        //        }
        List{
            ForEach(letters.map { String($0) }, id: \.self) { letter in
                Section(header: Text(letter)){
                    ForEach(boxes4.filter { $0.title.hasPrefix(letter) }, id: \.id) { box in
                        NavigationLink(destination: EachView(box: nil, box2: nil, box3: nil, box4: box)) {
                            BoxView4(box: box)
                        }
                    }
                }
                //.listSectionSeparator(.hidden)
            }
            
            //            ForEach(boxes4, id: \.id) { box in
            //                NavigationLink(destination:
            //                                EachView(box: nil, box2: nil, box3: nil, box4: box)){
            //                    BoxView4(box: box)
            //                }
            //            }
        }
        .listStyle(.inset)
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

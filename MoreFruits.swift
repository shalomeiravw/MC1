//
//  MoreFruits.swift
//  MC1
//
//  Created by Shalomeira Winata on 01/04/23.
//

import SwiftUI

struct MoreFruits: View {
    let boxes: [Box]
    let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    @State private var selectedIndex = 0
    
    var body: some View {
        GeometryReader{ geo in
            ZStack {
                //Color.white.edgesIgnoringSafeArea(.all)
                //HStack{
                    List {
                        ForEach(letters.map { String($0) }, id: \.self) { letter in
                            Section(header: Text(letter)){
                                ForEach(boxes.filter { $0.title.hasPrefix(letter) }, id: \.id) { box in
                                    NavigationLink(destination: EachView(box: box, box2: nil, box3: nil, box4: nil)) {
                                        BoxView(box: box)
                                    }
                                }
                            }
                            //.listSectionSeparator(.hidden)
                            //.background(Color.white)
                        }
                    }
                    //.background(Color.white)
                    .background(Color(UIColor.systemGroupedBackground))
                    .listStyle(GroupedListStyle())
                    .navigationTitle("Fruits")
                    .navigationBarTitleDisplayMode(.inline)
                    
                    //                    IndexView(letters: letters, boxSections: boxesBySection(boxes: boxes, letters: letters))
                    //.frame(width: geo.size.width * 0.1)
                    //.background(Color(UIColor.secondarySystemBackground))
                    //                        .cornerRadius(10)
                    //                        .padding(.vertical, 5)
                //}
                .padding(.vertical)
                .frame(maxWidth: .infinity)
            }
        }
    }
}



//struct IndexView: View{
//    let letters: String
//
//    var body: some View{
//        VStack{
//            ForEach(letters.map { String($0) }, id:\.self) { letter in
//                Text(letter)
//                    .font(.caption)
//                    .foregroundColor(.accentColor)
//                    .padding(.vertical, 0.5)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .padding(.leading, 5)
//            }
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//            //.background(Color(UIColor.secondarySystemBackground))
//            .cornerRadius(10)
//            //.padding(.vertical, 70)
//            .padding(.horizontal, 5)
//        }
//    }


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

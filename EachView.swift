//
//  EachView.swift
//  MC1
//
//  Created by Shalomeira Winata on 03/04/23.
//

import SwiftUI

struct EachView: View {
    let box: Box?
    let box2: Box2?
    let box3: Box3?
    let box4: Box4?
    
    var body: some View {
        //NavigationView {
            ScrollView(.vertical){
                if let box = box {
                    VStack {
                        Image("\(box.imageUrl)")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .padding(.bottom,30)
                            .padding(.top,20)
                        VStack(alignment: .leading) {
                            Text("• Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                            Text("• Donec nec mi suscipit, iaculis turpis non, ultrices est.")
                            Text("• Curabitur vitae libero congue nibh luctus lobortis.")
                            Text("• Aenean consectetur risus id tincidunt interdum.")
                            Text("• Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                .padding(.top,10)
                            Text("• Donec nec mi suscipit, iaculis turpis non, ultrices est.")
                            Text("• Curabitur vitae libero congue nibh luctus lobortis.")
                            Text("• Aenean consectetur risus id tincidunt interdum.")
                                .padding(.bottom,30)
                            HStack{
                                Image("\(box.imageUrl)")
                                    .resizable()
                                    .cornerRadius(0)
                                    .frame(width: 100, height: 100)
                                Image("\(box.imageUrl)")
                                    .resizable()
                                    .cornerRadius(0)
                                    .frame(width: 100, height: 100)
                                Image("\(box.imageUrl)")
                                    .resizable()
                                    .cornerRadius(0)
                                    .frame(width: 100, height: 100)
                            }
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis est nunc. Suspendisse potenti. Vestibulum sed urna orci. Ut ac ipsum at arcu dictum facilisis. Sed porttitor mauris non elit mollis fermentum. Maecenas pharetra massa eget nunc vulputate, at scelerisque nulla tempus. Duis est justo, fringilla in convallis a, molestie quis nisl. Proin consequat sed dui nec fringilla. Etiam sagittis fringilla pellentesque.")
                                .padding(.top,10)
                        }
                        .padding(.horizontal, 30)
                    }              .navigationTitle(Text(box.title))
                    .navigationBarTitleDisplayMode(.inline)
                } else if let box2 = box2 {
                    VStack {
                        Image("\(box2.imageUrl)")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .padding(.bottom,30)
                            .padding(.top,20)
                        VStack(alignment: .leading) {
                            Text("• Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                            Text("• Donec nec mi suscipit, iaculis turpis non, ultrices est.")
                            Text("• Curabitur vitae libero congue nibh luctus lobortis.")
                            Text("• Aenean consectetur risus id tincidunt interdum.")
                            Text("• Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                .padding(.top,10)
                            Text("• Donec nec mi suscipit, iaculis turpis non, ultrices est.")
                            Text("• Curabitur vitae libero congue nibh luctus lobortis.")
                            Text("• Aenean consectetur risus id tincidunt interdum.")
                                .padding(.bottom,30)
                            HStack{
                                Image("\(box2.imageUrl)")
                                    .resizable()
                                    .cornerRadius(0)
                                    .frame(width: 100, height: 100)
                                Image("\(box2.imageUrl)")
                                    .resizable()
                                    .cornerRadius(0)
                                    .frame(width: 100, height: 100)
                                Image("\(box2.imageUrl)")
                                    .resizable()
                                    .cornerRadius(0)
                                    .frame(width: 100, height: 100)
                            }
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis est nunc. Suspendisse potenti. Vestibulum sed urna orci. Ut ac ipsum at arcu dictum facilisis. Sed porttitor mauris non elit mollis fermentum. Maecenas pharetra massa eget nunc vulputate, at scelerisque nulla tempus. Duis est justo, fringilla in convallis a, molestie quis nisl. Proin consequat sed dui nec fringilla. Etiam sagittis fringilla pellentesque.")
                                .padding(.top,10)
                        }
                        .padding(.horizontal,30)
                    }
                    .navigationTitle(Text(box2.title))
                    .navigationBarTitleDisplayMode(.inline)
                }else if let box3 = box3 {
                    VStack {
                        Image("\(box3.imageUrl)")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .padding(.bottom,30)
                            .padding(.top,20)
                        VStack(alignment: .leading) {
                            Text("• Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                            Text("• Donec nec mi suscipit, iaculis turpis non, ultrices est.")
                            Text("• Curabitur vitae libero congue nibh luctus lobortis.")
                            Text("• Aenean consectetur risus id tincidunt interdum.")
                            Text("• Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                .padding(.top,10)
                            Text("• Donec nec mi suscipit, iaculis turpis non, ultrices est.")
                            Text("• Curabitur vitae libero congue nibh luctus lobortis.")
                            Text("• Aenean consectetur risus id tincidunt interdum.")
                                .padding(.bottom,30)
                            HStack{
                                Image("\(box3.imageUrl)")
                                    .resizable()
                                    .cornerRadius(0)
                                    .frame(width: 100, height: 100)
                                Image("\(box3.imageUrl)")
                                    .resizable()
                                    .cornerRadius(0)
                                    .frame(width: 100, height: 100)
                                Image("\(box3.imageUrl)")
                                    .resizable()
                                    .cornerRadius(0)
                                    .frame(width: 100, height: 100)
                            }
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis est nunc. Suspendisse potenti. Vestibulum sed urna orci. Ut ac ipsum at arcu dictum facilisis. Sed porttitor mauris non elit mollis fermentum. Maecenas pharetra massa eget nunc vulputate, at scelerisque nulla tempus. Duis est justo, fringilla in convallis a, molestie quis nisl. Proin consequat sed dui nec fringilla. Etiam sagittis fringilla pellentesque.")
                                .padding(.top,10)
                        }
                        .padding(.horizontal, 30)
                    }
                    .navigationTitle(Text(box3.title))
                    .navigationBarTitleDisplayMode(.inline)
                }else if let box4 = box4 {
                    VStack {
                        Image("\(box4.imageUrl)")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .padding(.bottom,30)
                            .padding(.top,20)
                        VStack(alignment: .leading) {
                            Text("• Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                            Text("• Donec nec mi suscipit, iaculis turpis non, ultrices est.")
                            Text("• Curabitur vitae libero congue nibh luctus lobortis.")
                            Text("• Aenean consectetur risus id tincidunt interdum.")
                            Text("• Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                .padding(.top,10)
                            Text("• Donec nec mi suscipit, iaculis turpis non, ultrices est.")
                            Text("• Curabitur vitae libero congue nibh luctus lobortis.")
                            Text("• Aenean consectetur risus id tincidunt interdum.")
                                .padding(.bottom,30)
                            HStack{
                                Image("\(box4.imageUrl)")
                                    .resizable()
                                    .cornerRadius(0)
                                    .frame(width: 100, height: 100)
                                Image("\(box4.imageUrl)")
                                    .resizable()
                                    .cornerRadius(0)
                                    .frame(width: 100, height: 100)
                                Image("\(box4.imageUrl)")
                                    .resizable()
                                    .cornerRadius(0)
                                    .frame(width: 100, height: 100)
                            }
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis est nunc. Suspendisse potenti. Vestibulum sed urna orci. Ut ac ipsum at arcu dictum facilisis. Sed porttitor mauris non elit mollis fermentum. Maecenas pharetra massa eget nunc vulputate, at scelerisque nulla tempus. Duis est justo, fringilla in convallis a, molestie quis nisl. Proin consequat sed dui nec fringilla. Etiam sagittis fringilla pellentesque.")
                                .padding(.top,10)
                        }
                        .padding(.horizontal,30)
                    }
                    .navigationTitle(Text(box4.title))
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
    }
}

struct EachView_Previews: PreviewProvider {
    static var previews: some View {
        EachView(box: Box(id: 0, title: "Apple", imageUrl: "apple"), box2: nil, box3:nil, box4:nil)
        EachView(box: nil, box2: Box2(id: 0, title: "Broccolli", imageUrl: "broccolli"), box3: nil, box4:nil)
        EachView(box: nil, box2: nil, box3: Box3(id: 0, title: "Chicken", imageUrl: "chicken"), box4:nil)
        EachView(box: nil, box2: nil, box3:nil,box4: Box4(id: 0, title: "Salmon", imageUrl: "salmon"))
    }
}

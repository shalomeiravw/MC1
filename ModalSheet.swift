//
//  ModalSheet.swift
//  MC1
//
//  Created by Shalomeira Winata on 10/04/23.
//

import SwiftUI

struct ModalSheet: View {
    var body: some View {
        ScrollView{
                   VStack{
                       Text("Avocado")
                           .font(.title)
                           .fontWeight(.bold)
                       Image("avocado")
                           .resizable()
                           .frame(width: 200, height: 200)
                           .padding(.bottom,30)
                           .padding(.top,20)
                       VStack(alignment: .leading){
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
                       }
                       HStack{
                           Spacer()
                           VStack{
                               Image("avocado")
                                   .resizable()
                                   .frame(width: 100, height: 100)
                               Text("Unripe")
                                   .fontWeight(.semibold)
                           }
                           Spacer()
                           VStack{
                               Image("avocado")
                                   .resizable()
                                   .frame(width: 100, height: 100)
                               Text("Ripe")
                                   .fontWeight(.semibold)
                           }
                           Spacer()
                           VStack{
                               Image("avocado")
                                   .resizable()
                                   .frame(width: 100, height: 100)
                               Text("Overripe")
                                   .fontWeight(.semibold)
                           }
                           Spacer()
                       }
                       .padding()
                       Spacer()
                       VStack(alignment: .leading){
                           Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis est nunc. Suspendisse potenti. Vestibulum sed urna orci. Ut ac ipsum at arcu dictum facilisis. Sed porttitor mauris non elit mollis fermentum. Maecenas pharetra massa eget nunc vulputate, at scelerisque nulla tempus. Duis est justo, fringilla in convallis a, molestie quis nisl. Proin consequat sed dui nec fringilla. Etiam sagittis fringilla pellentesque.")
                               .padding(.top,10)
                       }
                       .padding(.horizontal, 30)
                   }
               }
               .padding()
               .padding(.top, 15)
               .ignoresSafeArea(.container, edges: [.bottom])
           }
       }

       struct TextView: UIViewRepresentable {
           var text: String
           
           func makeUIView(context: Context) -> UITextView {
               let textView = UITextView()
               textView.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.body)
               textView.textAlignment = .justified
               return textView
           }
           
           func updateUIView(_ uiView: UITextView, context: Context) {
               uiView.text = text
           }
}

struct ModalSheet_Previews: PreviewProvider {
    static var previews: some View {
        ModalSheet()
    }
}

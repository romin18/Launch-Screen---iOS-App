//
//  ContentView.swift
//  Landing Screen
//
//  Created by student on 20/06/24.
//

import SwiftUI

struct LaunchView<Content:View>: View {
    @State var show = false
    @State var showHomeView = false
    var image:ImageResource
    var title:String
    var content: Content
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0){
                ZStack{
                    Text(title).bold().font(.system(size: 70))
                        .foregroundStyle(.white)
                        .opacity(show ? 1 : 0)
                        .offset(y: -100)
                        .offset(y: show ? 0 : -50)
                        .scaleEffect(show ? 1 : 1.3)
//                    Image(systemName: "person").renderingMode(.template)
//                        .resizable().scaledToFill()
//                        .frame(width: geo.size.width)
//                        .foregroundStyle(.black)
//                    .offset(y: showHomeView ? -geo.size.height : 0)
                }
                .frame(width: geo.size.width, height: geo.size.height)
                .background(
                    Image(image).resizable().scaledToFill()
                        .scaleEffect(show ? 1 : 1.3)
                )
                content
                    .frame(width: geo.size.width, height: geo.size.height)
                    .offset(y: showHomeView ? -geo.size.height : 0)
            }
            //test animation
//            .onTapGesture {
//                withAnimation(.linear(duration: 3)){
//                    showHomeView.toggle()
//                }
//            }
        }
        .ignoresSafeArea()
        .onAppear(){
            withAnimation(.smooth(duration: 2)){
                show.toggle()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                withAnimation(.linear(duration: 1)){
                    showHomeView = true
                }
            }
        }
        
    }
}

//#Preview {
//    LaunchView()
//}

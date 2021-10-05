//
//  ContentView.swift
//  SwiftUI_SwiftUIGuide
//
//  Created by kazunori.aoki on 2021/10/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // 内包したViewを上から下へ、奥から表示する
        ZStack {
            Color.green.ignoresSafeArea() // SafeAreaを無視する
            
            // 端末サイズ等取得できる
            GeometryReader { geometory in
                
                ScrollView {
                    // 上下に配置、メモリにやさしい
                    LazyVStack(alignment: .center, spacing: 12) {
                        
                        Text("Hello, world!")
                            .foregroundColor(.red)
                            .font(.title)
                        
                        // cssは書く順番で効果が変わる
                        Text("Hello, world!")
                            .font(.system(size: 32))             // font設定
                            .bold()                              // Weight
                            .padding([.horizontal, .top], 23)    // padding（配列で設定可能）
                            .background(Color(uiColor: .orange)) // backgroundColor
                            .cornerRadius(20)                    // 角丸
                        
                        Image(systemName: "suit.heart.fill")
                            .font(.largeTitle) // SF Symbolはフォントの指定が効く
                            .foregroundColor(.red)
                        
                        Divider() // 区切り線
                        
                        Image("totoro_rect")
                            .resizable()
                            .frame(width: geometory.size.width, height: geometory.size.width)
                            .scaledToFit()
                        
                        Image("totoro_rect")
                            .resizable()
                            .frame(width: geometory.size.width, height: geometory.size.width)
                            .scaledToFit()
                        
                        Image("totoro_rect")
                            .resizable()
                            .frame(width: geometory.size.width, height: geometory.size.width)
                            .scaledToFit()
                        
                        Spacer() // 広がれるだけ広がる
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

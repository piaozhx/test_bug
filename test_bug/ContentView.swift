//
//  ContentView.swift
//  test_bug
//
//  Created by 朴智新 on 2020/9/10.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {


    var body: some View {
        NavigationView {
            VStack {
                TargetView()

                NavigationLink(destination: TargetView()) {
                    Text("Click Me")
                }
            }
        }
    }
}

struct TargetView: View {
    var body: some View {
        VStack {
            AnimatedImage(url: URL(string: "http://127.0.0.1:8080/test.webp"),
                          options: [.waitStoreCache])
                .resizable()
                .frame(width: 80, height: 80)
                .background(Color.black)
                .cornerRadius(20)
                .padding(.trailing, 4)
            //
            AnimatedImage(url: URL(string: "http://127.0.0.1:8080/test.webp"),
                          options: [.waitStoreCache])
                .resizable()
                .frame(width: 80, height: 80)
                .background(Color.black)
                .cornerRadius(20)
                .padding(.trailing, 4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

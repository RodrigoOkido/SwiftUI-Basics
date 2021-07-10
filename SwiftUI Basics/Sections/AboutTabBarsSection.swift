//
//  AboutTabBarsSection.swift
//  SwiftUI Basics
//
//  Created by Rodrigo Yukio Okido on 30/06/21.
//

import SwiftUI

struct AboutTabBarsSection: View {
    var body: some View {
        TabView {
            VStack {
                Text("Simple and intuitive to create")
                    .font(.headline)

                Image("tabbars")
                    .resizable()
                    .frame(width: 350, height: 240, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
            }
            .tabItem {
                Label ("Tab 1", systemImage: "person.fill")
            }
            VStack {
                Text("Hey! I am tab 2!")
            }
            .tabItem {
                Label ("Tab 2", systemImage: "heart.fill")
            }
        }
        .navigationTitle("Tab bars")
    }
}

struct AboutTabBarsSection_Previews: PreviewProvider {
    static var previews: some View {
        AboutTabBarsSection()
    }
}

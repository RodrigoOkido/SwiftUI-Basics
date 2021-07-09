//
//  AboutNavigationSection.swift
//  SwiftUI Basics
//
//  Created by Rodrigo Yukio Okido on 30/06/21.
//

import SwiftUI

struct AboutNavigationSection: View {
    var body: some View {
        VStack {
            Image("navigation")
                .resizable()
                .frame(width: 250, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
            Text("Compared to UIKit, navigate to another View in SwiftUI is much more simple.")
                .padding()
                .font(.subheadline)
        }
        .padding()
        .navigationTitle("Navigation")
    }
}

struct AboutNavigationSection_Previews: PreviewProvider {
    static var previews: some View {
        AboutNavigationSection()
    }
}

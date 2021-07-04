//
//  AboutStackSection.swift
//  SwiftUI Basics
//
//  Created by Rodrigo Yukio Okido on 30/06/21.
//

import SwiftUI

struct AboutStackSection: View {
    var body: some View {
        VStack {
            Text("Stacks allows to insert multiple elements at your View. It has 3 types: VStack, HStack, ZStack.")
            Image("Stacks")
                .resizable()
                .frame(width: 300, height: 280, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .padding()
            VStack (alignment: .leading) {
                Text("VStack: \n    Organize elements vertically on the View.")
                Text("HStack: \n    Organize elements horizontally on the View.")
                Text("ZStack: \n    Overlay children elements on the View.")
            }
            .padding()
            .font(.system(size: 15))
        }
        .navigationTitle("Stack")
    }
}

struct AboutStackSection_Previews: PreviewProvider {
    static var previews: some View {
        AboutStackSection()
    }
}

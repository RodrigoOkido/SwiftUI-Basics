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
            Text("Compared to UIKit, navigate to another View in SwiftUI is much more simple.")
                .font(.headline)
            Image("navigation")
                .resizable()
                .frame(width: 250, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .padding()

            Text("The code above will have a similar behavior as 'show' of UIKit. Which stacks a new View on your app.")
                .font(.subheadline)
            
            Image("navigation_present")
                .resizable()
                .frame(width: 280, height: 230, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .padding()
            Text("This one is the present mode. Which will displays a new screen from below to top. In this case, the View just overlay another View. To dismiss we just need to move the View to bottom again.")
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

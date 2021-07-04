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
            Text("Hello, World!")
        }
        .navigationTitle("Navigation")
    }
}

struct AboutNavigationSection_Previews: PreviewProvider {
    static var previews: some View {
        AboutNavigationSection()
    }
}

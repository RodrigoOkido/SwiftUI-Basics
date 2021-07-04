//
//  AboutCustomizationSection.swift
//  SwiftUI Basics
//
//  Created by Rodrigo Yukio Okido on 30/06/21.
//

import SwiftUI

struct AboutCustomizationSection: View {
    var body: some View {
        VStack {
            Text("Customize elements in SwiftUI it's much more easy and intuitive.")
            Text("Hello, World!")
        }
        .navigationTitle("Customizations")
    }
    
}

struct AboutCustomizationSection_Previews: PreviewProvider {
    static var previews: some View {
        AboutCustomizationSection()
    }
}

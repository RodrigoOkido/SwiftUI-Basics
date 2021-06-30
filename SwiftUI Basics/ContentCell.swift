//
//  ContentCell.swift
//  SwiftUI Basics
//
//  Created by Rodrigo Yukio Okido on 29/06/21.
//

import SwiftUI

struct ContentCell: View {
    
    var title: String
    var description: String
    var textColor: Color?
    var backgroundColor: Color?
    
    var body: some View {
        VStack {
            Text("\(title)")
                .bold()
                .foregroundColor(textColor ?? Color(.black))
                .font(.title3)
            Text("\(description)")
                .foregroundColor(textColor ?? Color(.black))
                .frame(width: 150, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.callout)
        }
        .padding()
        .background(backgroundColor ?? Color(.lightGray))
        .cornerRadius(10)

    }
}

struct ContentCell_Previews: PreviewProvider {
    static var previews: some View {
        ContentCell(title: "Title", description: "description", textColor: Color(.black), backgroundColor: Color(.orange))
    }
}

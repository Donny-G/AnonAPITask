//
//  Image.swift
//  AnonAPITask
//
//  Created by Denis Golovizin on 17.09.2021.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image(systemName: "star")
            .resizable()
            .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.red)
    }
}

struct Image_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}

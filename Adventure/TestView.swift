//
//  TestView.swift
//  Adventure
//
//  Created by Dan Beers on 2/15/21.
//

import SwiftUI

struct TestView: View {
    @State private var originalState = true
    @State private var offsetState = false
    
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                originalState.toggle()
            }
            .offset(y: originalState ? 0 : -300)
            .animation(
                Animation
                    .default
                        .delay(0.5)
            )
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

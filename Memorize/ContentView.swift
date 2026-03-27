//
//  ContentView.swift
//  Memorize
//
//  Created by Marta Pancaldi on 10/08/24.
//

import SwiftUI

struct ContentView: View {
    // body is a _computed_property_
    var body: some View {
        // some = the type of body needs to be any struct as long as it behaves like a View - aka 'some view'
        VStack(alignment: .center,
//               spacing: 30 // defaults to 'just the right amount'
        ) { // Embedded function
            Image(systemName: "tortoise")
                .foregroundColor(Color.green)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, Marta!")
                .foregroundColor(Color.blue)
                .font(.largeTitle)
            Text("Just felt like adding another line here :)")
                .foregroundColor(Color.teal)
        }
        .padding(40)
        .border(Color.orange, width: 5)
    }
}

#Preview {
    ContentView()
}

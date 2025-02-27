//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by Sumanth Reddy Gada on 31/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var myText = "Hello, world!"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(myText)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Button("Say hi!", action: sayHi).padding()
        }
        .padding()
    }
    
    func sayHi() {
        myText = "Hi!"
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  Programming Jokes
//
//  Created by Student on 2/1/22.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(
                    destination: Text(joke.punchline)
                        .padding(),
                    label: {
                        Text(joke.setup)
                    })
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear(perform: {
                   getJokes()
               })
    }
    func getJokes() {
        let apiKey = "?rapidapi-key=001b5c5e5emsh7fc081c3e3e9f4bp1b46f4jsn80c50e3dfd2c"
       }
}

struct Joke: Identifiable {
    let id = UUID()
    var setup: String
    var punchline: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

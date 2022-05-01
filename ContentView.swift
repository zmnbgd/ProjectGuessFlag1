//
//  ContentView.swift
//  GuessTheFlag1
//
//  Created by Marko Zivanovic on 29.4.22..
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            //Color.red
                .ignoresSafeArea()
            VStack {
                Button("Show alert") {
                    showingAlert = true
                }
                .alert("Important message", isPresented: $showingAlert) {
                    Button("Delete", role: .destructive) {}
                    Button("Cancel", role: .cancel) {}
                    
                } message: {
                        Text("Please read this")
                    }
                }
                .frame(width: 100, height: 50, alignment: .center)
                .background(Color.blue)
                .foregroundColor(Color.red)
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

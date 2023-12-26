//
//  ContentView.swift
//  PunchApp
//
//  Created by Bandit Silachai on 22/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var animateFace = true
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Punch Count: \(count)")
                .font(.title).bold()
                .animation(.bouncy, value: count)
            Image("face")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(animateFace ? 1 : 0.9)
                .padding()
                .onTapGesture {
                    animateFace = false
                    count += 1
                    withAnimation(.spring(response: 0.4, dampingFraction: 0.8, blendDuration: 0)) {
                        animateFace = true
                    }
                }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}

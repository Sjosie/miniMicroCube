//
//  ContentView.swift
//  miniMicroCube
//
//  Created by Evgeny Protopopov on 06.03.2021.
//
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1

    var body: some View {
        Rectangle().fill(Color.green)
            .padding()
            .background(Color.green)
            .clipShape(Rectangle())
            .frame(width: 100, height: 100, alignment: .center)
            .scaleEffect(animationAmount)
            .animation(.easeInOut(duration: 2))
            .onAppear(perform: {
                self.animationAmount += 1
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

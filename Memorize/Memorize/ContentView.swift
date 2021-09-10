//
//  ContentView.swift
//  Memorize
//
//  Created by Atanas Kolev on 10.09.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .stroke(lineWidth: 3)
            
            Text("Hello World!")
        }.padding(.horizontal).foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

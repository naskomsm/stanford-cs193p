//
//  Test.swift
//  Memorize
//
//  Created by Atanas Kolev on 22.11.21.
//

import SwiftUI

struct TestView: View {
    var body: some View {
      
        
        HStack {
            GeometryReader { geometry in
                Text("hi")
            }
        }.frame(width: 71, height: 71, alignment: .center)
    }
}


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

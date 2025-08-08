//
//  ContentView.swift
//  To-Do List
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showNEwTask = false
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List!")
                    .font(.system(size:40))
                    .fontWeight(.bold)
                Spacer()
                Button {

                } label: {
                    Text("+")
                        .fontWeight(.bold)
                        .font(.title)
                }
            }//End of HStack
            Spacer()
        }//end of VStack
        .padding()
    }
}

#Preview {
    ContentView()
}

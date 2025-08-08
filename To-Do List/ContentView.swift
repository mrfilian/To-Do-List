//
//  ContentView.swift
//  To-Do List
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State private var showNewTask = false
    
@Query var toDos: [ToDoItem]
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List!")
                    .font(.system(size:40))
                    .fontWeight(.bold)
                Spacer()
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                } label:{
                    Text("+")
                        .fontWeight(.bold)
                        .font(.title)
                }
            }//End of HStack
            Spacer()
            List{
                ForEach(toDos){
                    toDoItem in Text(toDoItem.title)
                }
            }
            if showNewTask {
                NewToDo(toDoItem(title:"", isImportant: false))
            
            }
        }//end of VStack
        .padding()
    }
}

#Preview {
 ContentView()
}

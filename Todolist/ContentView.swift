//
//  ContentView.swift
//  Todolist
//
//  Created by msweidan on 24/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var todos = [
        Todo(title: "But some grocary"),
        Todo(title: "Pick uo son from school"),
        Todo(title: "Prepare for class", isComplted: true)
    ]
    var body: some View {
        NavigationView {
            List($todos) { $todo in
                HStack{
                    Image(systemName: todo.isComplted ? "checkmark.circle.fill" : "circle" )
                        .onTapGesture {
                            todo.isComplted.toggle()
                        }
                    Text(todo.title)
                    
                        .strikethrough(todo.isComplted)
                }
            }
            .navigationTitle("Todos List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

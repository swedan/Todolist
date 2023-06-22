//
//  ContentView.swift
//  Todolist
//
//  Created by msweidan on 24/02/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var todoManger = TodoManager()
//    @State var todos = [
//        Todo(title: "But some grocary", subTitle: "Vegatables and corn"),
//        Todo(title: "Pick uo son from school"),
//        Todo(title: "Prepare for class", isComplted: true)
//    ]
    
    @State var showSheet = false
    
    var body: some View {
        NavigationView {
            List($todoManger.todos) { $todo in
                TodoRowView(todo: $todo)
            }
            .navigationTitle("Todos list")
            .toolbar {
                ToolbarItem(placement:.navigationBarLeading){
                    EditButton()
                }
                    
                ToolbarItem(placement:.navigationBarTrailing){
                    Button{
                        showSheet = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }

            }
            
            .sheet(isPresented: $showSheet){
                NewTodoView(todos: $todoManger.todos)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

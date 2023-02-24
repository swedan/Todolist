//
//  NewTodoView.swift
//  Todolist
//
//  Created by msweidan on 24/02/2023.
//

import SwiftUI

struct NewTodoView: View {
    @State var todoTitle = ""
    @State var todoSubTitle = ""
    
    @Binding var todos: [Todo]
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section ("Info"){
                TextField ("Title", text: $todoTitle)
                TextField ("SubTitle", text: $todoSubTitle)
            }
            
            Section ("Actions"){
                Button ("Save"){
                    let newTodo = Todo (title: todoTitle, subTitle: todoSubTitle)
                    todos.append(newTodo)
                    dismiss()
                }
                
                Button ("Cancel", role: .destructive){
                    dismiss()
                }
            }
            
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(todos: .constant([]))
    }
}

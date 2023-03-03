//
//  TodoRowView.swift
//  Todolist
//
//  Created by msweidan on 03/03/2023.
//

import SwiftUI

struct TodoRowView: View {
    @Binding var todo: Todo

    var body: some View {
        NavigationLink {
            TodoDetailsView(todo: $todo)
        } label: {
            HStack{
                Image(systemName: todo.isComplted ? "checkmark.circle.fill" : "circle" )
                VStack{
                    Text(todo.title)
                        .strikethrough(todo.isComplted)
                    Text(!todo.subTitle.isEmpty ? todo.subTitle : "")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .strikethrough(todo.isComplted)
                }
            }
            .onTapGesture {
                todo.isComplted.toggle()
            }
        }
    }
}

struct TodoRowView_Previews: PreviewProvider {
    static var previews: some View {
        TodoRowView(todo: .constant(Todo(title: "Demo todo")))
    }
}

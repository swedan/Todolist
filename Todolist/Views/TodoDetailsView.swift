//
//  TodoDetailsView.swift
//  Todolist
//
//  Created by msweidan on 24/02/2023.
//

import SwiftUI

struct TodoDetailsView: View {
    @Binding var todo: Todo
    
    var body: some View {
        Form {
            
            TextField("Title", text: $todo.title)
            TextField("Subtitle", text: $todo.subTitle)
            Toggle ("Is completed?" , isOn: $todo.isComplted)
                        
        }
        .navigationTitle("Todo details")
    }
}

struct TodoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailsView(todo: .constant(Todo(title: "demo task")))
    }
}

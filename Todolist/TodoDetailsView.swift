//
//  TodoDetailsView.swift
//  Todolist
//
//  Created by msweidan on 24/02/2023.
//

import SwiftUI

struct TodoDetailsView: View {
    @State var todo =  Todo(title: "Task 1")
    
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
        TodoDetailsView()
    }
}

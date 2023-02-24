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
    
    var body: some View {
        Form {
            Section ("Info"){
                TextField ("Title", text: $todoTitle)
                TextField ("SubTitle", text: $todoSubTitle)
            }
            
            Section ("Actions"){
                Button ("Save"){
                    
                }
                
                Button ("Cancel", role: .destructive){
                    
                }
            }
            
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView()
    }
}

//
//  Todo.swift
//  Todolist
//
//  Created by msweidan on 24/02/2023.
//

import Foundation

struct Todo: Identifiable{
    
    var id = UUID()
    var title: String
    var isComplted: Bool =  false
    
    var subTitle: String = ""
    
}

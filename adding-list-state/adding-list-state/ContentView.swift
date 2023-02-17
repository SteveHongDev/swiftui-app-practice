//
//  ContentView.swift
//  adding-list-state
//
//  Created by Steve Hong on 2023/02/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var tasks = [Task]()
    
    private func addTask() {
        self.tasks.append(Task(name: "New Task"))
    }
    
    var body: some View {
        
        VStack {
            
            Button {
                addTask()
            } label: {
                Text("Add Task")
            }
            
            List {
                
                ForEach(tasks) { task in
                    Text(task.name)
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

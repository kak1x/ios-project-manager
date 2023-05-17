//
//  ContentView.swift
//  ProjectManager
//
//  Created by kaki, 릴라 on 2023/05/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            HStack{
                SwiftUIList()
                SwiftUIList()
                SwiftUIList()
            }
            .navigationTitle("Project manager")
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

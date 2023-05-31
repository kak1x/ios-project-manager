//
//  ProjectListContextMenuView.swift
//  ProjectManager
//
//  Created by kaki, 릴라 on 2023/05/29.
//

import SwiftUI

struct ProjectListContextMenuView: View {
    @Binding var viewModel: ProjectViewModel
    private let state: ProjectState
    private let project: Project
    
    init(viewModel: Binding<ProjectViewModel>, state: ProjectState, project: Project) {
        self._viewModel = viewModel
        self.state = state
        self.project = project
    }
    
    var body: some View {
        VStack {
            Button(state.contextItem.first.contextText) {
                viewModel.move(project: project, to: state.contextItem.first)
            }
            Button(state.contextItem.second.contextText) {
                viewModel.move(project: project, to: state.contextItem.second)
            }
        }
    }
}

struct ProjectListContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectListContextMenuView(
            viewModel: .constant(ProjectViewModel()),
            state: .todo,
            project: .init(title: "", body: "", date: Date())
        )
        
    }
}

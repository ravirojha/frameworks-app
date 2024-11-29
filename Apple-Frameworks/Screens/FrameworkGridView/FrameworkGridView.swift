//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Ravi Ranjan  Ojha on 29/11/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        NavigationStack {
                List {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                        
                    }
                }
            .navigationTitle("Frameworks")
            .navigationDestination(for: Framework.self) {framework in
                FrameworkDetailView(framework: framework)
                
            }
        }.accentColor(Color(.label))
    }
}





#Preview {
    FrameworkGridView()
}




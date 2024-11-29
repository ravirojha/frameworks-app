//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Ravi Ranjan  Ojha on 29/11/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false;

    var body: some View {
        VStack {
                        
            Spacer()

            FrameworkTitleView(framework: framework)
            
            Text(framework.description).font(.body).padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://www.google.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework:  MockData.sampleFramework, isShowingDetailView: .constant(false))
}



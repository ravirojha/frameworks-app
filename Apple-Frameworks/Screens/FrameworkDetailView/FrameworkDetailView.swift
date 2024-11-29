//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Ravi Ranjan  Ojha on 29/11/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
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
//                AFButton(title: "Learn More")
                Label("Learn more", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://www.google.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework:  MockData.sampleFramework)
}



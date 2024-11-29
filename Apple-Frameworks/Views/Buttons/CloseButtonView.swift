//
//  CloseButtonView.swift
//  Apple-Frameworks
//
//  Created by Ravi Ranjan  Ojha on 29/11/24.
//

import SwiftUI

struct CloseButtonView: View {
    @Binding var isShowingDetailView: Bool

    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingDetailView = false
                
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }.padding()
    }
}

#Preview {
    CloseButtonView(isShowingDetailView: .constant(false))
}

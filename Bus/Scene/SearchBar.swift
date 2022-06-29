//
//  SearchBar.swift
//  Bus
//
//  Created by Arie on 2022/06/29.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("찾는 버스가 있나요?", text: $text)
                    .foregroundColor(.primary)
                if !text.isEmpty {
                    Button {
                        self.text = ""
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                    }
                } else {
                    EmptyView()
                }
            }
            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            .foregroundColor(.secondary)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10)
        }
        .padding(.horizontal)
    }
}


struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBusView()
    }
}

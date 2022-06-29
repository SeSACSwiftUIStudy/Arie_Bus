//
//  ContentView.swift
//  Bus
//
//  Created by Arie on 2022/06/29.
//

import SwiftUI

struct SearchBusView: View {
    @ObservedObject private var viewModel = SearchBookViewModel()
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $viewModel.searchText)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                
                List(viewModel.items) { item in
                    SearchBusCell(displayedData: item)
                }
            }
        }
        .navigationTitle("ARIE")
        
    }
}

struct SearchBusView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBusView()
    }
}





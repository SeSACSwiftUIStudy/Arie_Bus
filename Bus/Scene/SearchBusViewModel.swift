//
//  SearchBusViewModel.swift
//  Bus
//
//  Created by Arie on 2022/06/29.
//

import SwiftUI
import Combine

final class SearchBookViewModel: ObservableObject {
    @Published var searchText = ""
    let allItems: [BusDisplayData]
    @Published var items = [BusDisplayData]()
    
    private var searchCancellable: Cancellable? {
        didSet {
            oldValue?.cancel()
        }
    }
    
    deinit {
        searchCancellable?.cancel()
    }
    
    init() {
        allItems = SearchAPI.all().map { return BusDisplayData(id: $0.id, name: $0.name) }
        items = allItems
        
        searchCancellable = $searchText
            .debounce(for: 0.5, scheduler: DispatchQueue.main)
            .removeDuplicates()
            .filter { !$0.isEmpty && $0.first != " " }
            .flatMap { searchString -> AnyPublisher<[Bus], Never> in
                print("searchString: \(searchString)")
                return SearchAPI.searchBy(text: searchString)
                    .eraseToAnyPublisher()
            }
            .map {
                self.busToDisplayedData($0)
            }
            .replaceError(with: [])
            .assign(to: \.items, on: self)
    }
    
    
    
    func busToDisplayedData(_ busList: [Bus]) -> [BusDisplayData] {
        var display = [BusDisplayData]()
        
        busList.forEach {
            let data = BusDisplayData(id: $0.id, name: $0.name)
            display.append(data)
        }
        
        return display
    }
}


struct BusDisplayData: Identifiable {
    let id: String
    let name: String
}

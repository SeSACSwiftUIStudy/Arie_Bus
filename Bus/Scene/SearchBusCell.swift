//
//  SearchBusCell.swift
//  Bus
//
//  Created by Arie on 2022/06/29.
//

import SwiftUI

struct SearchBusCell: View {
    private let displayedData: BusDisplayData
    
    init(displayedData: BusDisplayData) {
        self.displayedData = displayedData
    }
    
    var body: some View {
        HStack {
            Text("Id: \(displayedData.id)")
                .fontWeight(.medium)
            
            Text("name: \(displayedData.name)")
                .fontWeight(.bold)
            
        }
    }
}

struct SearchBusCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchBusView()
    }
}

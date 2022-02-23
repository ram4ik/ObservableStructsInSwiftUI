//
//  WrappedStruct.swift
//  ObservableStructsInSwiftUI
//
//  Created by Ramill Ibragimov on 23.02.2022.
//

import Foundation

class WrappedStruct<T>: ObservableObject {
    @Published var item: T
    
    init(withItem item:T) {
        self.item = item
    }
}

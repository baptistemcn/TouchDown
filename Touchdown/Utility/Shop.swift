//
//  Shop.swift
//  Touchdown
//
//  Created by Baptiste on 28/05/2021.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}

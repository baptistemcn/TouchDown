//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Baptiste on 28/05/2021.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}

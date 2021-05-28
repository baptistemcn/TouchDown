//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Baptiste on 28/05/2021.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // Locate JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in Bundle")
        }
        
        // Create Properties for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        // Create Decoder
        let decoder = JSONDecoder()
        
        // Create a properties for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Fail to decode \(file) from bundle.")
        }
        
        // Ready to use data
        return decodedData
    }
}

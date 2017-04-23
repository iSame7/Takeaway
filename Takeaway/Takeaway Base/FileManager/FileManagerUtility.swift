//
//  FileManager.swift
//  Takeaway
//
//  Created by Sameh Mabrouk on 23/04/2017.
//  Copyright © 2017 Sameh Mabrouk. All rights reserved.
//

import Foundation

enum FileManagerError: Error {
    case fileNotFound
    case invalidFile
}

protocol FileManagerProtocol {
    func getDataFromFile(fileName: String) -> NSData?
}

class FileManagerUtility: FileManagerProtocol {
    func getDataFromFile(fileName: String) -> NSData? {
        if let fileURL = Bundle.main.url(forResource: fileName, withExtension: "json") {
            guard let data = NSData(contentsOf: fileURL) else { return nil}
            return data
        }
        return nil
    }
}

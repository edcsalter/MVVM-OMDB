//
//  String+Extensions.swift
//  MoviesApp
//
//  Created by Ed Salter on 3/10/22.
//

import Foundation

extension String {
    func trimmedAndEscape() -> String {
        let trimmedString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}

//
//  View+Extensions.swift
//  MoviesApp
//
//  Created by Ed Salter on 3/10/22.
//

import Foundation
import SwiftUI

extension View {
    func embedNavigationView() -> some View {
        return NavigationView { self }
    }
}

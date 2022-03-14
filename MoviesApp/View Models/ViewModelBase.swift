//
//  ViewModelBase.swift
//  MoviesApp
//
//  Created by Ed Salter on 3/10/22.
//

import Foundation

enum LoadingState {
    case loading, success, failed, none
}

class ViewModelBase: ObservableObject {
    @Published var loadingState: LoadingState = .none
    
}

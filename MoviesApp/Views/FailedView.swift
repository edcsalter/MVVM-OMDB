//
//  FailedView.swift
//  MoviesApp
//
//  Created by Ed Salter on 3/10/22.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct FailedView: View {
    var body: some View {
        Text("Invalid Query")
            .font(.headline)
    }
}

struct FailedView_Previews: PreviewProvider {
    static var previews: some View {
        FailedView()
    }
}

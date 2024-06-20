//
//  LaunchScreenView.swift
//  Landing Screen
//
//  Created by student on 20/06/24.
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        LaunchView(image: .sky2, title: "Explore", content: HomeView())
    }
}

#Preview {
    LaunchScreenView()
}

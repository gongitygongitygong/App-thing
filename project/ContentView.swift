//
//  ContentView.swift
//  project
//
//  Created by Zicheng on 20/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""

    var body: some View {
        TextField("Enter your text here", text: $text)
            .padding()
    }
}

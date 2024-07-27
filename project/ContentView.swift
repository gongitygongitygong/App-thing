//
//  ContentView.swift
//  project
//
//  Created by Zicheng on 20/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""

    var body: some View {
        Form {
            TextField("Username", text: $username)
                .autocapitalization(.none)
            SecureField("Password", text: $password)
        }
    }
}

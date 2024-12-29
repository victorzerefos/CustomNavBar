//
//  ContentView.swift
//  CustomNavBar
//
//  Created by Victor Zerefos on 29/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(0..<100){ i in
                Text("Row \(i)")
            }
            .navigationTitle("Rows")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.inset)
            .toolbarBackground(.pink, for: .navigationBar)
//            .toolbarVisibility(.hidden, for: .navigationBar)
            .toolbarColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
}

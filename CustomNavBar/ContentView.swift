//
//  ContentView.swift
//  CustomNavBar
//
//  Created by Victor Zerefos on 29/12/24.
//

import SwiftUI


struct DetailView: View {
    var number: Int
    
    var body: some View {
        Text("Number \(number)")
    }
    
}

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            List(0..<100){ i in
                NavigationLink("Row \(i)", value: i)
            }
            .navigationTitle("Rows")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.inset)
            .toolbarBackground(.pink, for: .navigationBar)
//            .toolbarVisibility(.hidden, for: .navigationBar)
            .toolbarColorScheme(.dark)
            .navigationDestination(for: Int.self) { i in
                DetailView(number: i)
            }
        }
        
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  host-ios-project
//
//  Created by Team nStudio on 7/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MyView()
    }
}

import SwiftUI

struct MyView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> ViewController {
        let vc = ViewController()
                // Do some configurations here if needed.
                return vc
        }
        
        func updateUIViewController(_ uiViewController: ViewController, context: Context) {
            
        }
}

#Preview {
    ContentView()
}

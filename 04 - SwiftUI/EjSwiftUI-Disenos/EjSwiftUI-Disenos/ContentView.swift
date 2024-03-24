//
//  ContentView.swift
//  EjSwiftUI-Disenos
//
//  Created by Javier Rodríguez Gómez on 23/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		TabView {
			Diseno1()
				.tabItem {
					Label("Diseño 1", systemImage: "1.square.fill")
				}
			Diseno2()
				.tabItem {
					Label("Diseño 2", systemImage: "2.square.fill")
				}
			Diseno3()
				.tabItem {
					Label("Diseño 3", systemImage: "3.square.fill")
				}
			Diseno4()
				.tabItem {
					Label("Diseño 4", systemImage: "4.square.fill")
				}
		}
    }
}

#Preview {
    ContentView()
}

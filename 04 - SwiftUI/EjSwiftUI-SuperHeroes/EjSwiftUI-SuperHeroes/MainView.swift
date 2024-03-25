//
//  MainView.swift
//  EjSwiftUI-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 25/3/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
		TabView {
			ListView()
				.tabItem {
					Label("Lista", systemImage: "list.bullet")
				}
			
			GridView()
				.tabItem {
					Label("Colección", systemImage: "square.grid.3x3")
				}
		}
    }
}

#Preview {
    MainView()
}

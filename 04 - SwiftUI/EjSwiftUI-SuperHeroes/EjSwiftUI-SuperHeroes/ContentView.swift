//
//  ContentView.swift
//  EjSwiftUI-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 24/3/24.
//

import SwiftUI

struct ContentView: View {
	let heroes = getHeros()
	
    var body: some View {
		NavigationStack {
			List(heroes) { hero in
				NavigationLink(value: hero) {
					HStack(spacing: 20.0) {
						Image(hero.imagen)
							.resizable()
							.scaledToFit()
							.frame(width: 80, height: 80)
							.clipShape(.circle)
							.shadow(radius: 5)
						Text(hero.apodo)
							.font(.headline)
					}
				}
			}
			.navigationDestination(for: Hero.self) { hero in
				DetailView(hero: hero)
			}
			.navigationTitle("Super Héroes")
		}
    }
}

#Preview {
    ContentView()
}

//
//  GridView.swift
//  EjSwiftUI-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 25/3/24.
//

import SwiftUI

struct GridView: View {
	let heroes = getHeros()
	let columns: [GridItem] = [GridItem(.adaptive(minimum: 100))]
	
    var body: some View {
		NavigationStack {
			ScrollView {
				LazyVGrid(columns: columns, spacing: 25) {
					ForEach(heroes) { hero in
						NavigationLink(value: hero) {
							VStack {
								HeroAvatar(hero: hero)
								Text(hero.apodo)
									.font(.footnote)
									.foregroundStyle(.secondary)
							}
						}
						.buttonStyle(.plain)
					}
				}
			}
			.navigationTitle("Super Héroes")
			.navigationDestination(for: Hero.self) { hero in
				DetailView(hero: hero)
			}
		}
    }
}

#Preview {
    GridView()
}

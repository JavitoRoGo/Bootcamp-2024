//
//  ListView.swift
//  EjSwiftUI-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 24/3/24.
//

import SwiftUI

struct ListView: View {
	let heroes = getHeros()
	
    var body: some View {
		NavigationStack {
			List(heroes) { hero in
				NavigationLink(value: hero) {
					HStack(spacing: 20.0) {
						HeroAvatar(hero: hero)
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
    ListView()
}

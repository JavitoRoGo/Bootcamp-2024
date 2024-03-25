//
//  HeroAvatar.swift
//  EjSwiftUI-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 25/3/24.
//

import SwiftUI

struct HeroAvatar: View {
	let hero: Hero
	
	var body: some View {
		Image(hero.imagen)
			.resizable()
			.scaledToFit()
			.frame(width: 80, height: 80)
			.clipShape(.circle)
			.shadow(radius: 5)
	}
}

#Preview {
	HeroAvatar(hero: getHeros().randomElement()!)
}

//
//  DetailView.swift
//  EjSwiftUI-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 24/3/24.
//

import SwiftUI

struct DetailView: View {
	let hero: Hero
	
    var body: some View {
		List {
			VStack(spacing: 20) {
				Image(hero.imagen)
					.resizable()
					.scaledToFit()
					.clipShape(.rect(cornerRadius: 25))
					.shadow(color: .black.opacity(0.9), radius: 10, x: 5, y: 10)
				Text(hero.apodo)
					.font(.largeTitle)
			}
			
			HStack {
				VStack(alignment: .leading) {
					Text("Nombre real")
						.font(.headline)
					Text(hero.nombre)
				}
				Spacer()
				VStack(alignment: .trailing) {
					Text("Edad")
						.font(.headline)
					Text("\(hero.edad)")
				}
			}
			
			VStack(alignment: .leading) {
				Text("Poderes")
					.font(.headline)
				Text(hero.listaPoderes)
			}
			
			VStack(alignment: .leading) {
				Text("Historia")
					.font(.headline)
				Text(hero.historia)
			}
		}
		.navigationTitle("Información")
		.navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
	NavigationStack {
		DetailView(hero: getHeros().randomElement()!)
	}
}

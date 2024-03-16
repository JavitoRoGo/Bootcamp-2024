//
//  SuperHeroLogic.swift
//  EjUIKit-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 11/3/24.
//

import UIKit

final class SuperHeroLogic {
	static let shared = SuperHeroLogic()
	
	let interactor: DataInteractor
	
	var superHeroes: [SuperHero]
	
	var snapshot: NSDiffableDataSourceSnapshot<Int, SuperHero> {
		var snapshot = NSDiffableDataSourceSnapshot<Int, SuperHero>()
		snapshot.appendSections([1])
		snapshot.appendItems(superHeroes, toSection: 1)
		return snapshot
	}
	
	private init(interactor: DataInteractor = SuperHeroInteractor.shared) {
		self.interactor = interactor
		self.superHeroes = (try? interactor.loadData()) ?? []
	}
	
	func getHeroAt(_ indexPath: IndexPath) -> SuperHero {
		superHeroes[indexPath.row]
	}
}

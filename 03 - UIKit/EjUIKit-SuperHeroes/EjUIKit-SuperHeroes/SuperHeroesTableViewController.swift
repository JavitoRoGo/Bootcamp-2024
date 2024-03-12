//
//  SuperHeroesTableViewController.swift
//  EjUIKit-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 11/3/24.
//

import UIKit

class SuperHeroesTableViewController: UITableViewController {
	
	let logic = SuperHeroLogic.shared
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.clearsSelectionOnViewWillAppear = false
	}
	
	// MARK: - Table view data source
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		logic.superHeroes.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "zelda", for: indexPath)
		let hero = logic.getHeroAt(indexPath)
		
		var content = UIListContentConfiguration.cell()
		content.text = hero.apodo
		content.image = UIImage(named: hero.imagen)
		cell.contentConfiguration = content
		
		return cell
	}
	
	// MARK: - Navigation
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let selected = tableView.indexPathForSelectedRow,
			  let destination = segue.destination as? HeroDetailTableViewController else { return }
		destination.selectedHero = logic.getHeroAt(selected)
	}
}

//
//  DiffableTableViewController.swift
//  EjUIKit-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 16/3/24.
//

import UIKit

class DiffableTableViewController: UITableViewController {
	let logic = SuperHeroLogic.shared
	
	lazy var dataSource: UITableViewDiffableDataSource<Int, SuperHero> = {
		UITableViewDiffableDataSource<Int, SuperHero>(tableView: tableView) { tableView, indexPath, hero in
			let cell = tableView.dequeueReusableCell(withIdentifier: "zelda", for: indexPath)
			var content = UIListContentConfiguration.cell()
			content.text = hero.apodo
			content.image = UIImage(named: hero.imagen)
			cell.contentConfiguration = content
			
			return cell
		}
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.clearsSelectionOnViewWillAppear = false
		tableView.dataSource = dataSource
		dataSource.apply(logic.snapshot)
	}
	
	
	@IBSegueAction func viewDetail(_ coder: NSCoder) -> HeroDetailTableViewController? {
		guard let indexPath = tableView.indexPathForSelectedRow else { return nil }
		let destination = HeroDetailTableViewController(coder: coder)
		destination?.selectedHero = dataSource.itemIdentifier(for: indexPath)
		destination?.title = "Diffable info"
		return destination
	}
}

//
//  HeroDetailTableViewController.swift
//  EjUIKit-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 11/3/24.
//

import UIKit

class HeroDetailTableViewController: UITableViewController {
	let logic = SuperHeroLogic.shared
	
	var selectedHero: SuperHero?
	
	@IBOutlet weak var imagen: UIImageView!
	@IBOutlet weak var apodo: UILabel!
	@IBOutlet weak var nombre: UILabel!
	@IBOutlet weak var edad: UILabel!
	@IBOutlet weak var poderes: UILabel!
	@IBOutlet weak var descripcion: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		imagen.image = UIImage(named: selectedHero?.imagen ?? "")
		apodo.text = selectedHero?.apodo
		nombre.text = selectedHero?.nombre
		edad.text = "\(selectedHero?.edad ?? 0)"
		poderes.text = selectedHero?.poderes.map { $0.rawValue }.formatted(.list(type: .and).locale(Locale(identifier: "es")))
		descripcion.text = selectedHero?.historia
		
		imagen.layer.cornerRadius = 15
	}
}

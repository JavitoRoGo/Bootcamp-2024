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
		
		if let selectedHero {
			imagen.image = UIImage(named: selectedHero.imagen)
			edad.text = "\(selectedHero.edad)"
		}
		apodo.text = selectedHero?.apodo
		nombre.text = selectedHero?.nombreReal
		poderes.text = selectedHero?.poderes.map { $0.rawValue }.formatted(.list(type: .and).locale(Locale(identifier: "es")))
		descripcion.text = selectedHero?.descripcion
		
		imagen.layer.cornerRadius = 15
	}
}

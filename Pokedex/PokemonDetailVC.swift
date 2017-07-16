//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Saul Rivera on 7/16/17.
//  Copyright © 2017 Dymtech. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var evoLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImh: UIImageView!
    
    var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = pokemon.name.capitalized
        
        mainImg.image = UIImage(named: "\(pokemon.pokedexId)")
        pokedexLbl.text = String(pokemon.pokedexId)
        currentEvoImg.image = UIImage(named: "\(pokemon.pokedexId)")
        
        pokemon.downloadPokemonDetails {
            self.updateUI()
        }
    }

    @IBAction func backSegue(_ sender: Any) {
        dismiss(animated: true)
    }
    
    func updateUI() {
        attackLbl.text = pokemon.attack
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        weightLbl.text = pokemon.weight
        typeLbl.text = pokemon.type
        descriptionLbl.text = pokemon.description
        if pokemon.nextEvoID != "" && pokemon.nextEvoLvl != "" {
            nextEvoImh.image = UIImage(named: pokemon.nextEvoID)
            evoLbl.text = "Next Evolution: \(pokemon.nextEvoName) LVL \(pokemon.nextEvoLvl)"
        } else if pokemon.nextEvoID != "" {
            nextEvoImh.image = UIImage(named: pokemon.nextEvoID)
            evoLbl.text = "Next Evolution: \(pokemon.nextEvoName)"
        } else {
            nextEvoImh.isHidden = true
            evoLbl.text = "No Evolution"
        }
    }

}

//
//  TacoCell.swift
//  TacoPOP
//
//  Created by Guilherme Gomes Cardoso on 4/22/17.
//  Copyright © 2017 Guilherme Cardoso. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView, Shakeable  {

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!

    var taco: Taco!
    
    func configureCell(taco: Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        tacoLabel.text = taco.productName
        print("Entrou no configure cel e o nome é \(taco.productName)")
    }
}

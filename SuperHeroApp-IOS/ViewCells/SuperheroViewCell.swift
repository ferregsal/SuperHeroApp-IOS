//
//  SuperheroViewCell.swift
//  SuperHeroApp-IOS
//
//  Created by Mañanas on 4/9/24.
//

import UIKit

class SuperheroViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var superheroImageView: UIImageView!
    
    @IBOutlet weak var superheroLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
       
    }
    func render(superhero: Superhero) {
        superheroLabel.text = superhero.name
        superheroImageView.loadFrom(url: superhero.image.url)
    }
    
}

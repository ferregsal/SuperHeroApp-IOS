//
//  DetailViewController.swift
//  SuperHeroApp-IOS
//
//  Created by Mañanas on 4/9/24.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var avatarImageView: UIImageView!
    var superhero: Superhero? = nil

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var realNameLabel: UILabel!
    
    @IBOutlet weak var publisherLabel: UILabel!
    
    @IBOutlet weak var placeOfBirthLabel: UILabel!
    
    @IBOutlet weak var alignmentLabel: UILabel!
    
    @IBOutlet weak var biographyStackView: UIStackView!
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
        
        nameLabel.layer.cornerRadius = 12
        nameLabel.layer.masksToBounds = true
        
        avatarImageView.layer.cornerRadius = 12
        avatarImageView.layer.masksToBounds = true
        
        biographyStackView.layer.cornerRadius = 12
        biographyStackView.layer.masksToBounds = true

           // Do any additional setup after loading the view.
           if let superhero = superhero {
               self.navigationItem.title = superhero.name
               nameLabel.text = superhero.name
               realNameLabel.text = superhero.biography.realName
               publisherLabel.text = superhero.biography.publisher
               placeOfBirthLabel.text = superhero.biography.placeOfBirth
               alignmentLabel.text = superhero.biography.alignment.capitalized
               if superhero.biography.alignment.capitalized == "Good" {
                   alignmentLabel.textColor = UIColor.systemGreen
               }
               else {
                   alignmentLabel.textColor = UIColor.systemRed
               }

               avatarImageView.loadFrom(url: superhero.image.url)
           }
       }
       
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

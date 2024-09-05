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

    @IBOutlet weak var nameTextView: UILabel!
    
    override func viewDidLoad() {
           super.viewDidLoad()
        
        nameTextView.layer.cornerRadius = 12
        nameTextView.layer.masksToBounds = true
        
        avatarImageView.layer.cornerRadius = 12
        avatarImageView.layer.masksToBounds = true

           // Do any additional setup after loading the view.
           if let superhero = superhero {
               self.navigationItem.title = superhero.name
               nameTextView.text = superhero.name
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

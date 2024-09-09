//
//  SuperheroViewController.swift
//  SuperHeroApp-IOS
//
//  Created by Mañanas on 4/9/24.
//

import UIKit

class SuperheroViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superheroList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SuperheroViewCell
               
               let superhero = superheroList[indexPath.row]
               
               cell.render(superhero: superhero)
               
               return cell
    }
    
    @IBOutlet weak var superheroSearchBar: UISearchBar!
    
    @IBOutlet weak var superheroTableView: UITableView!
    
    var superheroList: [Superhero] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        superheroSearchBar.text="super"
        superheroTableView.dataSource = self
                
        SuperheroProvider.findSuperheroesByName(superheroSearchBar.text!, withResult: { [unowned self /* weak self  */] results in
                    self.superheroList = results
                    DispatchQueue.main.async {
                        self.superheroTableView.reloadData()
                    }
                })
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if (segue.identifier == "showDetail") {
              let viewController = segue.destination as! DetailViewController
              
              let indexPath = superheroTableView.indexPathForSelectedRow!
              
              viewController.superhero = superheroList[indexPath.row]
              
              superheroTableView.deselectRow(at: indexPath, animated: false)
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


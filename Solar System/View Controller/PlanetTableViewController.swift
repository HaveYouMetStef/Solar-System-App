//
//  PlanetTableViewController.swift
//  Solar System
//
//  Created by Stef Castillo on 11/14/22.
//

import UIKit

class PlanetTableViewController: UITableViewController{
    var backgroundView = UIView()
    
    //MARK: Life Cycles
    //didLoad function
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Solar System"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = UIColor.white
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)

            tableView.reloadData()
        }
    

    //MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlanetController.shared.planets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        
        let planet = PlanetController.shared.planets[indexPath.row]
        //contentConfiguration
        var content = cell.defaultContentConfiguration()
        
        //Primary Text
        content.text = planet.planetName
        
        //Secondary Text
        content.secondaryText = planet.planetType
        //Image
        content.image = UIImage(systemName: (planet.favoritePlanet) ? "circle.fill": "circle")
        //color
        backgroundView.backgroundColor = UIColor.systemGray6
        cell.selectedBackgroundView = backgroundView
        //text property color and font size
        content.textProperties.color = .label
        content.textProperties.font = UIFont.preferredFont(forTextStyle: .headline)
        content.textToSecondaryTextVerticalPadding = 4
        
        //secondary text property color and font size
        content.secondaryTextProperties.color = .secondaryLabel
        content.secondaryTextProperties.font = UIFont.preferredFont(forTextStyle: .subheadline)
        
        //image's tint color and text padding
        content.imageProperties.tintColor = .systemPurple
        content.imageToTextPadding = 16
        
        cell.contentConfiguration = content
        
        return cell
    }
    
//    segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPlanetDetail" {

            guard let destinationVC = segue.destination as? PlanetDetailViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }

            let planet = PlanetController.shared.planets[indexPath.row]

            destinationVC.planet = planet
        }
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



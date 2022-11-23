//
//  PlanetDetailViewController.swift
//  Solar System
//
//  Created by Stef Castillo on 11/15/22.
//

import UIKit

class PlanetDetailViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let flowayout = collectionViewLayout as? UICollectionViewFlowLayout
        let space: CGFloat = (flowayout?.minimumInteritemSpacing ?? 0.0) + (flowayout?.sectionInset.left ?? 0.0) + (flowayout?.sectionInset.right ?? 0.0)
        let size:CGFloat = (collectionView.frame.size.width - space) / 2.0
        return CGSize(width: size, height: size * 0.50)

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.detailReuseId, for: indexPath) as? DetailCollectionViewCell  else { return UICollectionViewCell() }
        cell.imageContentView.alpha = 0.5
        cell.imageContentView.image = UIImage(systemName: "globe")
        
        guard let planet = planet else { return UICollectionViewCell() }
        
        switch indexPath.item {
        case 0:
            cell.titleLabel.text = "Day Length"
            cell.detailLabel.text = "\(planet.dayLengthInEarthDays) days"
            
        case 1:
            cell.titleLabel.text = "Year Length"
            cell.detailLabel.text = "\(planet.yearLengthInDays) days"
            
        case 2:
            cell.titleLabel.text = "Radius"
            cell.detailLabel.text = "\(planet.radiusMiles) miles"
            
        case 3:
            cell.titleLabel.text = "Moon Count"
            cell.detailLabel.text = "\(planet.moonCount)"
            
        case 4:
            cell.titleLabel.text = "Ring Count"
            cell.detailLabel.text = "\(planet.ringCount)"
            
        case 5:
            cell.titleLabel.text = "Plant Type"
            cell.detailLabel.text = "\(planet.planetType)"
            
        case 6:
            cell.titleLabel.text = "Distance from Sun"
            cell.detailLabel.text = "\(planet.distanceFromSun) AU"
            
        case 7:
            cell.titleLabel.text = "Galaxy"
            cell.detailLabel.text = "Milky Way"
            
        default:
            break
        }
        return cell
    }
    
    
    //MARK: - Properties
    var planet : Planet?
    
    //MARK: - Outlets
    
    @IBOutlet var detailCollectionView: UICollectionView!
    @IBOutlet var namesake: UILabel!
    @IBOutlet var ordinalSuffix: UILabel!
    @IBOutlet var planetOrder: UILabel!
    @IBOutlet var planetName: UILabel!
    @IBOutlet var planetImage: UIImageView!
    @IBOutlet var itemButton: UIBarButtonItem!
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        detailCollectionView.delegate = self
        detailCollectionView.dataSource = self
        itemButton.tintColor = .white
        updateViews()
        self.planet = PlanetController.shared.planets[0]
        
        
    }
    
    func updatedFavoriteStatus() {
        guard let planet = planet else {
                return
            }
            itemButton.image = UIImage(systemName: planet.favoritePlanet ? "star.circle.fill" : "star.circle")
    }
    
    //MARK: - UI Delegate
    
    
    //MARK: - UI Datasource
    
    //MARK: - Functions
    func updateViews() {
//        let attributedString = NSMutableAttributedString(string: ordinalSuffix.text ?? "")
//
//        attributedString.addAttribute(NSAttributedString.Key.kern, value: CGFloat(1.0), range: NSRange(location: 0, length: attributedString.length))
        
        guard let planet = planet else { return }
        
        planetImage.image = UIImage(named: planet.imageName)
        planetOrder.text = "\(planet.orderNumber)"
        ordinalSuffix.text = ordinalSuffix(order: planet.orderNumber) + " planet"
//        planetName.attributedText = attributedString
        planetName.text = planet.planetName.uppercased()
        namesake.text = planet.namesake
    }
    
    func ordinalSuffix(order:Int) -> String {
        switch order {
        case 1:
            return "st"
        case 2:
            return "nd"
        case 3:
            return "rd"
        case 4,5,6,7,8:
            return "th"
        default:
            return ""
        }
    }
    
    //MARK: - Actions
    @IBAction func buttonAction(_ sender: Any) {
        guard let planet = planet else {
            return
        }
        PlanetController.shared.updateFavorite(planet: planet)
        updatedFavoriteStatus()
    }
    
    //MARK: - Helper Methods
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

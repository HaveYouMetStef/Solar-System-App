//
//  PlanetController.swift
//  Solar System
//
//  Created by Stef Castillo on 11/1/22.
//

import Foundation

//class
class PlanetController {
    
    static let shared = PlanetController()
    
    //update your favorite bool value of the planet
    func updateFavorite(planet: Planet) {
        planet.favoritePlanet = !planet.favoritePlanet
    }
    
    var planets : [Planet] =
    [Planet(planetName: "Mercury", namesake: "Roman god of speed", imageName: "mercury", orderNumber: PlanetOrder.mercury.rawValue, dayLengthInEarthDays: 59, yearLengthInDays: 88, radiusMiles: 1516, moonCount: 0, ringCount: 0, planetType: PlanetType.terrestrial.rawValue, distanceFromSun: 0.4, favoritePlanet: false),
     Planet(planetName: "Venus", namesake: "Roman goddess of love", imageName: "venus", orderNumber: PlanetOrder.venus.rawValue, dayLengthInEarthDays: 243, yearLengthInDays: 225, radiusMiles: 7520, moonCount: 0, ringCount: 0, planetType: PlanetType.terrestrial.rawValue, distanceFromSun: 0.7, favoritePlanet: false),
     
     Planet(planetName: "Earth", namesake: "The ground", imageName: "earth", orderNumber: PlanetOrder.earth.rawValue, dayLengthInEarthDays: 1, yearLengthInDays: 365, radiusMiles: 3959, moonCount: 1, ringCount: 0, planetType: PlanetType.terrestrial.rawValue, distanceFromSun: 1, favoritePlanet: false),
     
     Planet(planetName: "Mars", namesake: "Roman god of war", imageName: "mars", orderNumber: PlanetOrder.mars.rawValue, dayLengthInEarthDays: 1.025, yearLengthInDays: 687, radiusMiles: 2106, moonCount: 2, ringCount: 0, planetType: PlanetType.terrestrial.rawValue, distanceFromSun: 1.5, favoritePlanet: false),
     
     Planet(planetName: "Jupiter", namesake: "King of the Roman gods", imageName: "jupiter", orderNumber: PlanetOrder.jupiter.rawValue, dayLengthInEarthDays: 0.416, yearLengthInDays: 4333, radiusMiles: 43440.7 , moonCount: 79, ringCount: 4, planetType: PlanetType.gasGiant.rawValue, distanceFromSun: 5.2, favoritePlanet: false),
     
     Planet(planetName: "Saturn", namesake: "Father of Jupiter", imageName: "saturn", orderNumber: PlanetOrder.saturn.rawValue, dayLengthInEarthDays: 0.445, yearLengthInDays: 10759, radiusMiles: 36183.7, moonCount: 62, ringCount: 8, planetType: PlanetType.gasGiant.rawValue, distanceFromSun: 9.5, favoritePlanet: false),
     
     Planet(planetName: "Uranus", namesake: "Greek god of the sky", imageName: "uranus", orderNumber: PlanetOrder.uranus.rawValue, dayLengthInEarthDays: 0.70, yearLengthInDays: 30687 , radiusMiles: 15759.2, moonCount: 27, ringCount: 13, planetType: PlanetType.iceGiant.rawValue, distanceFromSun: 19.8, favoritePlanet: false),
     
     Planet(planetName: "Neptune", namesake: "Roman god of the sea", imageName: "neptune", orderNumber: PlanetOrder.neptune.rawValue, dayLengthInEarthDays: 0.66, yearLengthInDays: 60190, radiusMiles: 15299.4 , moonCount: 14, ringCount: 5, planetType: PlanetType.iceGiant.rawValue, distanceFromSun: 30.1, favoritePlanet: false)]
    
}

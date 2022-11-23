//
//  Planet.swift
//  Solar System
//
//  Created by Stef Castillo on 10/31/22.
//

import Foundation

class Planet {
    let planetName: String
    let namesake: String
    let imageName: String
    let orderNumber: Int
    let dayLengthInEarthDays: Double
    let yearLengthInDays: Int
    let radiusMiles: Double
    let moonCount: Int
    let ringCount: Int
    let planetType: String
    let distanceFromSun: Double
    var favoritePlanet: Bool
    
    init(planetName: String, namesake: String, imageName:String, orderNumber: Int,  dayLengthInEarthDays: Double, yearLengthInDays: Int, radiusMiles: Double, moonCount: Int, ringCount: Int, planetType: String, distanceFromSun: Double, favoritePlanet: Bool) {
        self.planetName = planetName
        self.namesake = namesake
        self.imageName = planetName.lowercased()
        self.orderNumber = orderNumber
        self.dayLengthInEarthDays = dayLengthInEarthDays
        self.yearLengthInDays = yearLengthInDays
        self.radiusMiles = radiusMiles
        self.moonCount = moonCount
        self.ringCount = ringCount
        self.planetType = planetType
        self.distanceFromSun = distanceFromSun
        self.favoritePlanet = favoritePlanet
    }
}

//enums
enum PlanetType: String {
   case iceGiant = "Ice Giant"
   case gasGiant = "Gas Giant"
   case terrestrial = "Terrestrial"
}

enum PlanetOrder: Int {
    case mercury = 1
    case venus = 2
    case earth = 3
    case mars = 4
    case jupiter = 5
    case saturn = 6
    case uranus = 7
    case neptune = 8
}



//
//  Player.swift
//  PlayerScoop
//
//  Created by YAUHENI IVANIUK on 5/15/17.
//  Copyright © 2017 YauheniIvaniuk. All rights reserved.
//

import Foundation
import UIKit

struct Player {
    
    var name = "name"
    var age = 0
    var team = ""
    var height = ""
    var image = UIImage()
    var backgroundColor = UIColor.white
    var textColor1 = UIColor()
    var textColor2 = UIColor()
    
    static func createPlayers() -> [Player] {
        
        let harper = Player(name: "Bryce Harper", age: 24, team: "WSH", height: "6' 3\"", image: UIImage(named: "bryceHarper.png")!, backgroundColor: UIColor(red: 180/255, green: 20/255, blue: 56/255, alpha: 1), textColor1: UIColor.white, textColor2: UIColor(red: 0, green: 36/255, blue: 98/255, alpha: 1))
        
        let trout = Player(name: "Mike Trout", age: 25, team: "LAA", height: "6' 2\"", image: UIImage(named: "mikeTrout.png")!, backgroundColor: UIColor(red: 217/255, green: 29/255, blue: 34/255, alpha: 1), textColor1: UIColor.white, textColor2: UIColor(red: 32/255, green: 55/255, blue: 128/255, alpha: 1))
        
        let zimmerman = Player(name: "Ryan Zimmerman", age: 32, team: "WSH", height: "6' 3\"", image: UIImage(named: "ryanZimmerman.png")!, backgroundColor: UIColor(red: 180/255, green: 20/250, blue: 56/255, alpha: 1), textColor1: UIColor.white, textColor2: UIColor(red: 0, green: 36/255, blue: 98/255, alpha: 1))
        
        let freeman = Player(name: "Freddie Freeman", age: 27, team: "ATL", height: "6' 5\"", image: UIImage(named: "freddieFreeman.png")!, backgroundColor: UIColor(red: 33/255, green: 32/250, blue: 52/255, alpha: 1), textColor1: UIColor.white, textColor2: UIColor(red: 182/255, green: 36/250, blue: 33/255, alpha: 1))
        
        let sale = Player(name: "Chris Sale", age: 28, team: "BOS", height: "6' 6\"", image: UIImage(named: "chrisSale.png")!, backgroundColor: UIColor(red: 22/255, green: 32/250, blue: 52/255, alpha: 1), textColor1: UIColor.white, textColor2: UIColor(red: 249/255, green: 38/250, blue: 68/255, alpha: 1))
        
        return [harper, trout, zimmerman, freeman, sale]
    }
    
}

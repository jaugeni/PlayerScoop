//
//  DetailPlayerVC.swift
//  PlayerScoop
//
//  Created by YAUHENI IVANIUK on 5/15/17.
//  Copyright © 2017 YauheniIvaniuk. All rights reserved.
//

import UIKit

class DetailPlayerVC: UIViewController {
    
    var player = Player()
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var heightLbl1: UILabel!
    @IBOutlet weak var heightLbl2: UILabel!
    @IBOutlet weak var ageLbl1: UILabel!
    @IBOutlet weak var ageLbl2: UILabel!
    @IBOutlet weak var teamLbl1: UILabel!
    @IBOutlet weak var teamLbl2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        updateUILabels()
        
        imageView?.layer.cornerRadius = imageView.frame.size.width / 2
    }
    
    func updateUILabels() {
        view.backgroundColor = player.backgroundColor
        
        imageView?.image = player.image
        nameLbl?.text = player.name
        nameLbl?.textColor = player.textColor2
        heightLbl1?.textColor = player.textColor1
        heightLbl2?.textColor = player.textColor2
        heightLbl2?.text = player.height
        ageLbl1?.textColor = player.textColor1
        ageLbl2?.textColor = player.textColor2
        ageLbl2?.text = String(player.age)
        teamLbl1?.textColor = player.textColor1
        teamLbl2?.textColor = player.textColor2
        teamLbl2?.text = player.team
    }
    
    
    
    
}

//
//  PlayerVC.swift
//  PlayerScoop
//
//  Created by YAUHENI IVANIUK on 5/15/17.
//  Copyright © 2017 YauheniIvaniuk. All rights reserved.
//

import UIKit

class PlayerVC: UIViewController, UITableViewDataSource, UITableViewDelegate, UISplitViewControllerDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var players = Player.createPlayers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.splitViewController?.preferredDisplayMode = .allVisible
        self.splitViewController?.delegate = self
    }
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        return true
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let player = players[indexPath.row]
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = player.name
        cell.imageView?.image = player.image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let player = players[indexPath.row]
        performSegue(withIdentifier: "moveToDetailSegue", sender: player)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToDetailSegue" {
            let detailVC = segue.destination as! DetailPlayerVC
            
            detailVC.player = sender as! Player
        }
    }
    
    
}

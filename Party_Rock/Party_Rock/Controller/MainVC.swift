//
//  ViewController.swift
//  Party_Rock
//
//  Created by Nikolas Ponomarov on 30.08.17.
//  Copyright © 2017 Nikolas Ponomarov. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "http://www.forestalpark.com/madrid/wp-content/uploads/Logo-aventura-tirolinas-forestal-park-mobile.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jgo1MfHj79w?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Extreme - He Man Woman Hater (cover)")
    
        partyRocks.append(p1)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else {
              return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
}


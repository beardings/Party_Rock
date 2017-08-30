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
        
        let p1 = PartyRock(imageURL: "https://images.genius.com/dabe8f4ab86947d358c5e7a3e2a5de30.1000x1000x1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jgo1MfHj79w?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "He man woman hater")
        let p2 = PartyRock(imageURL: "https://images.genius.com/dabe8f4ab86947d358c5e7a3e2a5de30.1000x1000x1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jgo1MfHj79w?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "He man woman hater")
        let p3 = PartyRock(imageURL: "https://images.genius.com/dabe8f4ab86947d358c5e7a3e2a5de30.1000x1000x1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jgo1MfHj79w?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "He man woman hater")
        let p4 = PartyRock(imageURL: "https://images.genius.com/dabe8f4ab86947d358c5e7a3e2a5de30.1000x1000x1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jgo1MfHj79w?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "He man woman hater")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        
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


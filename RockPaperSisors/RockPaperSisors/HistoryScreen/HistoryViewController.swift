//
//  HistoryViewController.swift
//  RockPaperSisors
//
//  Created by Diplomado  on 20/10/23.
//

import UIKit

class HistoryViewController: UIViewController {

    var wins = Int()
    var loses = Int()
    var ties = Int()
    var userName = String()
    
    @IBOutlet weak var HistoryLabel: UILabel!
    @IBOutlet weak var winsLabel: UILabel!
    @IBOutlet weak var losesLabel: UILabel!
    @IBOutlet weak var tiesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HistoryLabel.text = "Este es tu historial de jugadas \(userName)"
        losesLabel.text = "You lose: \(loses)"
        winsLabel.text = "You won: \(wins)"
        tiesLabel.text = "Ties: \(ties)"
        print(wins)
        print(loses)
        print(ties)

       
    }
    



}

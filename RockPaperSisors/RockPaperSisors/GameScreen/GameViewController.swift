//
//  GameViewController.swift
//  RockPaperSisors
//
//  Created by Diplomado  on 19/10/23.
//

import UIKit

enum Choise {
    case Rock, Papper, Sissors
}

class GameViewController: UIViewController {
    
    var name: String = ""
    var WinValue = Int()
    var LoseValue = Int()
    var ScoreRequiredToWin = Int()
    var NumberOfRounds = Int()
    var GameMode = Int()
    var currentRound = 0
    var WINS = 0
    var LOSES = 0
    var TIES = 0
    

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var opponentLabel: UILabel!
    @IBOutlet weak var roundOrPointLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(name)
        messageLabel.text = "Reday \(name)? Let's play!"
        print(NumberOfRounds)
        print(GameMode)
    }
    
    func aRandomNumber() -> Choise {
        let radomNumber = Int.random(in: 0...2)
        switch  radomNumber {
        case 0: return .Rock
        case 1: return .Papper
        case 2: return .Sissors
        default : return .Papper
        }
    }
   
    
    
    @IBAction func sissorsButtonPressed(_ sender: Any) {
        if GameMode == 1 {
            gameModeForRounds(userChoice: .Sissors)
        } else {
            gameModeForPoints(userChoice: .Sissors)
        }
        
        
    
    }
    
    @IBAction func rockButtonPressed(_ sender: Any) {
        if GameMode == 1 {
            gameModeForRounds(userChoice: .Rock)
        } else {
            gameModeForPoints(userChoice: .Rock)
        }
        
    }
    
    @IBAction func paperButtonPressed(_ sender: Any) {
        if GameMode == 1 {
            gameModeForRounds(userChoice: .Papper)
        } else {
            gameModeForPoints(userChoice: .Papper)
        }
    
    }
    
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        view.backgroundColor = .white
        currentRound = 0
        roundOrPointLabel.text = "Round: \(currentRound)"
        messageLabel.text = "Reday \(name)? Let's play!"
        
    }
    
    @IBAction func historyButtonPressed(_ sender: Any) {
        let histoStoryboard = UIStoryboard(name: "HistoryStoryboard", bundle: .main)
     if  let histoViewController = histoStoryboard.instantiateViewController(withIdentifier: "HistoryVC") as? HistoryViewController {
         histoViewController.wins = WINS
         histoViewController.loses = LOSES
         histoViewController.ties = TIES
         histoViewController.userName = name
         self.present(histoViewController, animated: true)
    }
        
    }
    
    
    func gameModeForRounds(userChoice: Choise) {
       let opponentChoice = aRandomNumber()
        
        switch (userChoice, opponentChoice){
            
            //jugadas ganadoras
        case (.Rock, .Sissors):
            opponentLabel.text = "✂️"
            messageLabel.text = "You win \(name)! Congratulations🥳"
            currentRound += 1
            view.backgroundColor = .green
            roundOrPointLabel.text = "Round: \(currentRound)"
            WINS += 1
            
        case  (.Papper, .Rock):
            opponentLabel.text = "🪨"
            messageLabel.text = "You win \(name)! Congratulations🥳"
            currentRound += 1
            view.backgroundColor = .green
            roundOrPointLabel.text = "Round: \(currentRound)"
            WINS += 1

        case (.Sissors, .Papper):
            opponentLabel.text = "📄"
            messageLabel.text = "You win \(name)! Congratulations🥳"
            currentRound += 1
            view.backgroundColor = .green
            roundOrPointLabel.text = "Round: \(currentRound)"
            WINS += 1

            //jugadas empate
        case (.Rock, .Rock):
            opponentLabel.text = "🪨"
            messageLabel.text = "It's a tie, \(name)"
            view.backgroundColor = .brown
            roundOrPointLabel.text = "Points: \(currentRound) "
            TIES += 1
            
        case (.Sissors, .Sissors):
            opponentLabel.text = "✂️"
            messageLabel.text = "It's a tie, \(name)"
            view.backgroundColor = .brown
            roundOrPointLabel.text = "Round: \(currentRound)"
            TIES += 1
            
        case (.Papper, .Papper):
            opponentLabel.text = "📄"
            messageLabel.text = "It's a tie ,\(name)"
            view.backgroundColor = .brown
            roundOrPointLabel.text = "Round: \(currentRound)"
            TIES += 1
            
            //jugadoras perdedoras
        
        case (.Rock, .Papper):
            opponentLabel.text = "📄"
            messageLabel.text = "I win! You lose \(name)"
            view.backgroundColor = .red
            roundOrPointLabel.text = "Round: \(currentRound)"
            currentRound -= LoseValue
            LOSES += 1
            
        case (.Sissors, .Rock):
            opponentLabel.text = "🪨"
            messageLabel.text = "I win! You lose \(name)"
            view.backgroundColor = .red
            roundOrPointLabel.text = "Round: \(currentRound)"
            currentRound -= LoseValue
            LOSES += 1
            
            
        
        default:  
            opponentLabel.text = "✂️"
            messageLabel.text = "I win! You lose \(name)"
            view.backgroundColor = .red
            roundOrPointLabel.text = "Round: \(currentRound)"
            currentRound -= LoseValue
            LOSES += 1
            
        }
        
        if currentRound >= NumberOfRounds {
            let victoryAlert = UIAlertController(title: "Victoria!", message: "Has ganado todas las rondas!", preferredStyle: .alert)
                           
                       let okAction = UIAlertAction(title: "OK", style: .default) { [weak self] (action) in
                               // Restablece el fondo a gris y el puntaje a 0
                               self?.view.backgroundColor = .white
                               self?.roundOrPointLabel.text = "Round: 0"
                               self?.currentRound = 0
                           }
                       
                           victoryAlert.addAction(okAction)
                           
                           present(victoryAlert, animated: true, completion: nil)

            
        }
      
        }
    
    func gameModeForPoints(userChoice: Choise) {
       let opponentChoice = aRandomNumber()
        switch (userChoice, opponentChoice){
            //jugadas ganadoras
        case (.Rock, .Sissors):
            opponentLabel.text = "✂️"
            messageLabel.text = "You win \(name)! Congratulations🥳"
            currentRound += WinValue
            view.backgroundColor = .green
            roundOrPointLabel.text = "Points: \(currentRound) "
            WINS += 1
            
        case  (.Papper, .Rock):
            opponentLabel.text = "🪨"
            messageLabel.text = "You win \(name)! Congratulations🥳"
            currentRound += WinValue
            view.backgroundColor = .green
            roundOrPointLabel.text = "Points: \(currentRound) "
            WINS += 1

        case (.Sissors, .Papper):
            opponentLabel.text = "📄"
            messageLabel.text = "You win \(name)! Congratulations🥳"
            currentRound += WinValue
            view.backgroundColor = .green
            roundOrPointLabel.text = "Points: \(currentRound) "
            WINS += 1

            //jugadas empate
        case (.Rock, .Rock):
            opponentLabel.text = "🪨"
            messageLabel.text = "It's a tie, \(name)"
            view.backgroundColor = .brown
            roundOrPointLabel.text = "Points: \(currentRound) "
            TIES += 1
            
            
        case (.Sissors, .Sissors):
            opponentLabel.text = "✂️"
            messageLabel.text = "It's a tie, \(name)"
            view.backgroundColor = .brown
            roundOrPointLabel.text = "Points: \(currentRound) "
            TIES += 1
            
        case (.Papper, .Papper):
            opponentLabel.text = "📄"
            messageLabel.text = "It's a tie ,\(name)"
            view.backgroundColor = .brown
            roundOrPointLabel.text = "Points: \(currentRound) "
            TIES += 1
            
            //jugadas perdedoras
            
        case (.Rock, .Papper):
            opponentLabel.text = "📄"
            messageLabel.text = "I win! You lose \(name)"
            view.backgroundColor = .red
            roundOrPointLabel.text = "Points: \(currentRound) "
            currentRound -= LoseValue
            LOSES += 1
            
        case (.Sissors, .Rock):
            opponentLabel.text = "🪨"
            messageLabel.text = "I win! You lose \(name)"
            view.backgroundColor = .red
            roundOrPointLabel.text = "Points: \(currentRound) "
            currentRound -= LoseValue
            LOSES += 1
        
        default :
            opponentLabel.text = "✂️"
            messageLabel.text = "I win! You lose \(name)"
            view.backgroundColor = .red
            roundOrPointLabel.text = "Points: \(currentRound) "
            currentRound -= LoseValue
            LOSES += 1

        }
        
        if currentRound >= ScoreRequiredToWin {
            let victoryAlert = UIAlertController(title: "Victoria!", message: "Has ganado todas las rondas!", preferredStyle: .alert)
                           
                       let okAction = UIAlertAction(title: "OK", style: .default) { [weak self] (action) in
                               // Restablece el fondo a gris y el puntaje a 0
                               self?.view.backgroundColor = .white
                               self?.roundOrPointLabel.text = "Score: 0"
                               self?.currentRound = 0
                               self?.messageLabel.text = "Reday? Let's play!"
                           }
                       
                           victoryAlert.addAction(okAction)
                           
                           present(victoryAlert, animated: true, completion: nil)

            
        }
      
        }
      
        
    }
    
    


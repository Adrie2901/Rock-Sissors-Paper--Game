//
//  FirstViewController.swift
//  RockPaperSisors
//
//  Created by Diplomado  on 14/10/23.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var playersName: UITextField!
    @IBOutlet weak var winValue: UITextField!
    @IBOutlet weak var loseVValue: UITextField!
    @IBOutlet weak var ContinueButton: UIButton!
    @IBOutlet weak var scoreToWin: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var gameOptionsLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var SwitchGameMode: UISwitch!
    @IBOutlet weak var roundsLabel: UILabel!
    @IBOutlet weak var RoundSlider: UISlider!
    @IBOutlet weak var SliderValue: UILabel!
    @IBOutlet weak var viewPoints: UIView!
    @IBOutlet weak var viewRounds: UIView!
    
    var modoJuego: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        viewRounds.isHidden = true
        ContinueButton.isHidden = true
        infoButton.layer.cornerRadius = 6.0
        ContinueButton.layer.cornerRadius = 6.0
    }
    
    @IBAction func SliderAction(_ sender: UISlider) {
        hideButton()
        SliderValue.text = String(round(RoundSlider.value))
    }
    
    @IBAction func InfoButtonPressed(_ sender: Any) {
        let infoStoryboard = UIStoryboard(name: "InfoStoryboard", bundle: .main)
     if  let infoViewController = infoStoryboard.instantiateViewController(withIdentifier: "InfoVC") as? InfoViewController {
         self.present(infoViewController, animated: true)
         
    }
}
    
    @IBAction func playersNameHasSmth(_ sender: Any) {
        hideButton()
    }
    
    @IBAction func WinHasSmth(_ sender: Any) {
        hideButton()
    }
    
    @IBAction func LoseHideSmth(_ sender: Any) {
        hideButton()
    }
    
    @IBAction func requiredHasSmth(_ sender: Any) {
        hideButton()
    }
    
    
   
    @IBAction func continueButtonPressed(_ sender: Any) {
        hideButton()
        if modoJuego == 1 && SwitchGameMode.isOn {
            let gameStoryboard = UIStoryboard(name: "GameStoryboard", bundle: .main)
            if  let gameViewController = gameStoryboard.instantiateViewController(withIdentifier: "GameVC") as? GameViewController {
                gameViewController.navigationItem.title = "Rounds"
                gameViewController.name = playersName.text!
                gameViewController.NumberOfRounds = Int(round(RoundSlider.value))
                gameViewController.GameMode = modoJuego
             self.navigationController?.pushViewController(gameViewController, animated: true)
            }
            
            } else {
            
                let gameStoryboard = UIStoryboard(name: "GameStoryboard", bundle: .main)
                if  let gameViewController = gameStoryboard.instantiateViewController(withIdentifier: "GameVC") as? GameViewController {
                    gameViewController.navigationItem.title = "Points"
                    gameViewController.name = playersName.text!
                    gameViewController.GameMode = modoJuego
                    gameViewController.WinValue = Int(winValue.text ?? "1") ?? 1
                    gameViewController.LoseValue = Int(loseVValue.text ?? "1") ?? 1
                    gameViewController.ScoreRequiredToWin = Int(scoreToWin.text ?? "1") ?? 1
                    self.navigationController?.pushViewController(gameViewController, animated: true)
        }
          
            
        }
        
        
    }
    
 
    
    @IBAction func switchGameModeValueChanged (_ sender: UISwitch) {
        print("Switch value changed")
        hideButton()
        if sender.isOn {
            modoJuego = 1
            viewPoints.isHidden = true
            viewRounds.isHidden = false
            view.backgroundColor = .black
            nameLabel.textColor = .white
            gameOptionsLabel.textColor = .white
            pointsLabel.textColor = .white
            roundsLabel.textColor = .white
        }else {
            modoJuego = 2
            viewPoints.isHidden = false
            viewRounds.isHidden = true
            view.backgroundColor = .white
            nameLabel.textColor = .black
            gameOptionsLabel.textColor = .black
            pointsLabel.textColor = .black
            roundsLabel.textColor = .black
            
        }
    }
    
    func hideButton() {
        
        if (playersName.text != "" && Int(RoundSlider.value) != 0 && SwitchGameMode.isOn) {
            print("You can see it")
            ContinueButton.isHidden = false
            
        } else if ( winValue.text != "" && loseVValue.text != "" && scoreToWin.text != "" && playersName.text != "" ) {
            
            print("You can see it")
            ContinueButton.isHidden = false
            
        } else {
            ContinueButton.isHidden = true
            print("hidden")
        }
    }


}

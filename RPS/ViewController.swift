//
//  ViewController.swift
//  RPS
//
//  Created by Ecem Öztürk on 10.07.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    @IBAction func playPaper(_ sender: Any) {
//        let playerMove = "paper"
//        var controller:ResultViewController
//        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
//        playGamePushResults(playerMove,controller)
//        self.present(controller, animated: true, completion: nil)
//        //performSegue(withIdentifier: "playPaper", sender: self)
//
//    }
    
    @IBAction func playRock(_ sender: Any) {
        performSegue(withIdentifier: "playRock", sender: self)
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var playerMove: String = ""
        
        if segue.identifier == "playRock" {
            playerMove = "rock"
        } else if segue.identifier == "playScissors" {
            playerMove = "scissors"
        } else if segue.identifier == "playPaper" {
            playerMove = "paper"
        }
        
        let controller = segue.destination as! ResultViewController
        playGamePushResults(playerMove, controller)
    }
    func playGamePushResults(_ playerMove:String,_ controller:ResultViewController) {
        let moves = ["rock","paper","scissors"]
        let compMove = moves[Int(arc4random() % 3)]
        let (result,resultImage) = returnResultAndImage(playerMove, compMove)
        controller.resultLabelText = result
        controller.resultImageName = resultImage
        controller.playerImageName = playerMove
        controller.compImageName = compMove
    }
    func returnResultAndImage (_ playerMove:String, _ compMove:String) -> (String,String) {
        if playerMove == "rock" && compMove == "scissors" {
            return ("Player","1")
        } else if playerMove == "scissors" && compMove == "paper" {
            return ("Player","2")
        } else if playerMove == "paper" && compMove == "rock" {
            return ("Player","3")
        } else if compMove == "rock" && playerMove == "scissors" {
            return ("Computer","4")
        } else if compMove == "scissors" && playerMove == "paper" {
            return ("Computer","5")
        } else if compMove == "paper" && playerMove == "rock" {
            return ("Computer","6")
        } else {
            return ("Tie","tie")
        }
    }

    
}


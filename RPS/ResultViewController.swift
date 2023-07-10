//
//  ResultViewController.swift
//  RPS
//
//  Created by Ecem Öztürk on 10.07.2023.
//

import UIKit

class ResultViewController: UIViewController {

  
    @IBOutlet weak var resultImageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var compImageView: UIImageView!
    
    var resultLabelText:String?
    var resultImageName:String?
    var playerImageName:String?
    var compImageName:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = resultLabelText
        resultImageView.image = UIImage(named: resultImageName!)
        playerImageView.image = UIImage(named: playerImageName!)
        compImageView.image = UIImage(named: compImageName!)
    }
    
    @IBAction func playAgaing(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }
    
}

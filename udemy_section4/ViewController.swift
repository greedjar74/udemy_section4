//
//  ViewController.swift
//  udemy_section4
//
//  Created by 김홍석 on 2022/05/09.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    let imageIdx = ["", "One", "Two", "Three", "Four", "Five", "Six"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureRollButtonSetting()
    }
    
    @IBAction func tapRollButton(_ sender: UIButton) {
        let random1 = Int.random(in: 1...6)
        let random2 = Int.random(in: 1...6)
        
        self.firstDice.image = UIImage(named: "Dice\(imageIdx[random1]).jpg")
        self.secondDice.image = UIImage(named: "Dice\(imageIdx[random2]).jpg")
    }
    
    func configureRollButtonSetting() {
        self.rollButton.layer.cornerRadius = 10.0
    }
}


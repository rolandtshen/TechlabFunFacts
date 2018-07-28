//
//  ViewController.swift
//  FunFacts
//
//  Created by Roland Shen on 7/24/18.
//  Copyright © 2018 rolandshen. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    var colors: Colors = Colors()
    var facts: Facts = Facts()
    
    @IBOutlet weak var factButton: UIButton!
    @IBOutlet weak var factsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let randomFact = facts.getRandomFact()
        factsLabel.text = randomFact
        let randomColor = colors.getRandomColor()
        view.backgroundColor = randomColor
    factButton.setTitleColor(randomColor, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func newFunFact(_ sender: Any) {
        let randomFact = facts.getRandomFact()
        factsLabel.text = randomFact
        let randomColor = colors.getRandomColor()
        view.backgroundColor = randomColor
        factButton.setTitleColor(randomColor, for: .normal)
    }
}


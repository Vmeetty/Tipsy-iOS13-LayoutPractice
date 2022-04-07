//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by user on 07.04.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalResult: String?
    var settings: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = totalResult
        settingsLabel.text = settings
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by 韩飞洋 on 2025/10/26.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    var result: String?
    var settings: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = result ?? "NO RESULTS"
        settingsLabel.text = settings ?? "NO SETTINGS"
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
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

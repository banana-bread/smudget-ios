//
//  TodayViewController.swift
//  BudgetInfoToday
//
//  Created by Alex McBain on 17/05/2016.
//  Copyright © 2016 Alex Mc Bain. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    @IBOutlet weak var textLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let balance:Double = 56
        let budgetTitle = "June Budget"
        
        textLabel.text = budgetTitle + " has a balance of " + String(format: "%.2f", balance)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.

        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData

        completionHandler(NCUpdateResult.NewData)
    }
    
}

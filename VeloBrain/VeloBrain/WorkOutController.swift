//
//  
//  VeloBrain
//
//  Created by Nicolas Spragg on 2017-10-25.
//  Copyright © 2017 VeloBrain. All rights reserved.
//

import UIKit

class WorkOutController: UIViewController {
    
    @IBOutlet var speedTextField: UITextField!
    @IBOutlet var timeTextField: UITextField!
    @IBOutlet var heartRateLowField: UITextField!
    @IBOutlet var heartRateHighField: UITextField!
    
    override func viewDidLoad() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

        
}

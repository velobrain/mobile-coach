//
//  
//  VeloBrain
//
//  Created by Nicolas Spragg on 2017-10-25.
//  Copyright © 2017 VeloBrain. All rights reserved.
//

import UIKit

class WorkOutController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    @IBOutlet weak var heartRateLowPicker: UIPickerView!
    var pickerDataLow: [String] = [String]()
    
    
    override func viewDidLoad() {
        pickerDataLow = ["90","100","110"]
        heartRateLowPicker.delegate = self
        heartRateLowPicker.dataSource = self
        
      
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataLow.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataLow[row]
    }
    
}

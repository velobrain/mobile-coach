//
//  
//  VeloBrain
//
//  Created by Nicolas Spragg on 2017-10-25.
//  Copyright © 2017 VeloBrain. All rights reserved.
//

import UIKit

class WorkOutController: UIViewController {
    
    enum workOutParamErrors: Error {
        case tooFast // 35m/s
        case tooSlow // 3m/s
        case tooSlowHB //50
        case tooFastHB //180
        case emptyFast
        case emptySlow
        case emptyFastHB
        case emptySlowHB
    }
    
    
    //mark instance variables
    @IBOutlet var speedTextField: UITextField!
    
   
    @IBAction func startWorkoutButton(_ sender: Any) {
        textInputTest()
        
        /*
        do{
            try getSpeedUtil()
        } catch workOutParamErrors.tooSlow {
            print("speed is too slow < 5")
        } catch workOutParamErrors.tooFast {
            print("speed is too fast > 35")
        } catch workOutParamErrors.emptyFast{
            print("You did not enter a speed")
        } catch let randomError {
            print("??????",randomError)
        }
         */
    }
    //mark instance variables
    
    override func viewDidLoad() {
      removeKB()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //removes the keyboard by tapping anywhere on screen
    func removeKB() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
    }
    
    func getSpeedUtil() throws{
        guard let speed = speedTextField.text else {
            throw workOutParamErrors.emptyFast
        }
        guard speed > "35" else {
            throw workOutParamErrors.tooFast
        }
        guard speed < "5" else {
            throw workOutParamErrors.tooSlow
        }
    }
    
    //Fix this
    func textInputTest() {
        
        print(self.speedTextField.text!)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

        
}

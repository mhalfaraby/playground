//
//  ViewController.swift
//  dummyplaygroundiOS
//
//  Created by flow on 09/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    let driving2 = {
        print("I'm driving in my car")
    }
    
//    let driving = {(place: String) in
//        print("I'm going to \(place) in my car")
//    }
//
//    let drivingWithReturn = { (place: String) -> String in
//        return "I'm going to \(place) in my car"
//    }
    
    func travel(action: () -> Void) {
        print("I'm ready to go.")
        action()
        print("I'm arrived")
    }
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let message = drivingWithReturn("Ciputat")
//        print(message)
//
//        driving("Ciputat")
        
        travel(action: driving2)

        // Do any additional setup after loading the view.
        
    }
    


}


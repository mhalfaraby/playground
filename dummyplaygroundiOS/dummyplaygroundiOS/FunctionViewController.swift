//
//  FunctionViewController.swift
//  dummyplaygroundiOS
//
//  Created by flow on 13/11/20.
//

import UIKit

class FunctionViewController: UIViewController {

    var aby = ["ganteng" , "keren"]
    var new = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tambah()
        print(new)

    }
    func tambah () {
        
        new.append(contentsOf: aby)
    }

}

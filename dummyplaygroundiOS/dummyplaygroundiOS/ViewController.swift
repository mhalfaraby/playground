//
//  ViewController.swift
//  dummyplaygroundiOS
//
//  Created by flow on 09/11/20.
//

import UIKit

class ViewController: UIViewController {
    
 

   
    @IBOutlet weak var tes: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tes.delegate = self
        tes.dataSource = self
        
    }



}

extension ViewController: UITableViewDataSource {
    // jumlah table berdasarkan array struct
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // berapa jumlah tablenya
        return 3
    }
    // menampilkan cell nya sesuai array struct
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "hello world"
        return cell
}


}


extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped")
    }
    
}


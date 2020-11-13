//
//  ViewController.swift
//  dummyplaygroundiOS
//
//  Created by flow on 09/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    var data: both?

    @IBOutlet weak var picker: UIPickerView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        picker.dataSource = self
        picker.delegate = self
    }


   
      
    @IBAction func loadData(_ sender: UIButton)
    {
        let jsonString = """
        {
            "reason_list": [
                {"id": 144, "reason": "ABCD"},
                {"id": 221, "reason": "WXYZ"}
            ]
        }
        """

        if let data = jsonString.data(using: .utf8)
        {
            self.data = try? JSONDecoder().decode(both.self, from: data)
             DispatchQueue.main.async {[weak self] in
                   self?.picker.reloadComponent(0) //HERE..!!!
             }
        }
    }

    struct both :Codable{
       let reason_list : [reasonlist]?
       let whom_meet : [nameList]?
    }

    struct reasonlist :Codable{
      let id: Int?    //This "id" i couldnt access.
      let reason : String?
      enum CodingKeys: String, CodingKey {

      case reason
      case id
      }
    }

    struct nameList :Codable{
        let name : String?
        enum CodingKeys: String, CodingKey{
            case name
        }
    }

}


extension ViewController: UIPickerViewDataSource {
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return self.data?.reason_list?.count ?? 0
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row >= self.data!.reason_list!.count {
              return
          }

        let coba = self.data?.reason_list?[row].id

        
        print(coba!)
    }

    
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return self.data?.reason_list?[row].reason
    }
    
}

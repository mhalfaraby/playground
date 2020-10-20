
import UIKit

var penumpang = ["aby" ,"", "indra" ]

func tambahPenumpang (namaPenumpang: String) -> [String]  {
    if penumpang.isEmpty {
        penumpang.append(namaPenumpang)
        return penumpang
    }
    else {
        let jumlahPenumpang = penumpang.count
        for i in 0..<jumlahPenumpang {
            if penumpang[i] == "" {
                penumpang[i] = namaPenumpang
                return penumpang
            }
            else if penumpang[i] == namaPenumpang{
                
                print("\(namaPenumpang) sudah ada di dalam ")
                return penumpang
                
            }
            else if i == jumlahPenumpang - 1 {
                penumpang.append(namaPenumpang)
            }
        }
        
    }
    return penumpang

    
}


tambahPenumpang(namaPenumpang: "aby")

print(penumpang)
//let jumlahPenumpang = penumpang.count
//
//for i in 0..<jumlahPenumpang {
//    print("hello \(penumpang[i])")
//}


//tambahPenumpang(namaPenumpang: "asd")
//tambahPenumpang(namaPenumpang: "oden")
//tambahPenumpang(namaPenumpang: "aby")
//tambahPenumpang(namaPenumpang: "gokil")

//
//for _ in penumpang {
//    print("hello\(penumpang)")
//}




//let names = ["Anna", "Alex", "Brian", "Jack"]
//for name in names {
//    print("Hello, \(name)!")
//}
//





import UIKit

var penumpang = ["aby" , "indra" , "albert"]

func tambahPenumpang (namaPenumpang: String)  {
   // if penumpang.isEmpty {
        penumpang.append(namaPenumpang)
        
   // }
//    else {
//        let jumlahPenumpang = penumpang.count
//        for i in 1...jumlahPenumpang {
//            print("halo\(penumpang[i])")
//        }
//
//    }
}

tambahPenumpang(namaPenumpang: "asd")

let jumlahPenumpang = penumpang.count

for i in 1..<jumlahPenumpang {
    print("hello \(penumpang[i])")
}


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

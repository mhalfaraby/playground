//import Foundation
//let headers = ["key": "10b472cf0acb29938c934c80f7ac5323"]
//
//let request = NSMutableURLRequest(url: NSURL(string: "https://api.rajaongkir.com/starter/city?id=12")! as URL,
//                                        cachePolicy: .useProtocolCachePolicy,
//                                    timeoutInterval: 10.0)
//request.httpMethod = "GET"
//request.allHTTPHeaderFields = headers
//
//let session = URLSession.shared
//let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//  if (error != nil) {
//    print(error!)
//  }
//    if let safeData = data {
//        let dataString = String(data: safeData, encoding: .utf8)
//        print(dataString!)
//
//    }
//  }
//)

dataTask.resume()

 
import Foundation

let headers = [
  "key": "10b472cf0acb29938c934c80f7ac5323",
  "content-type": "application/x-www-form-urlencoded"
]

let postData = NSMutableData(data: "origin=501".data(using: String.Encoding.utf8)!)
postData.append("&destination=114".data(using: String.Encoding.utf8)!)
postData.append("&weight=1700".data(using: String.Encoding.utf8)!)
postData.append("&courier=jne".data(using: String.Encoding.utf8)!)

let request = NSMutableURLRequest(url: NSURL(string: "https://api.rajaongkir.com/starter/cost")! as URL,
                                        cachePolicy: .useProtocolCachePolicy,
                                    timeoutInterval: 10.0)
request.httpMethod = "POST"
request.allHTTPHeaderFields = headers
request.httpBody = postData as Data

let session = URLSession.shared
let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
  if (error != nil) {
    print(error!)
  }; if let safeData = data {
         let dataString = String(data: safeData, encoding: .utf8)
           print(dataString!)
  }
}
)

dataTask.resume()

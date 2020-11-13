





import Foundation

struct array {
    
    let city_name: String
    let city_id: String
    
}


var new = [(city_name: "Buleleng", city_id: "94"), (city_name: "Denpasar", city_id: "114"), (city_name: "Gianyar", city_id: "128")]


var kosong = [String]()


new.forEach {(new) in
 
    kosong.append(new.city_id)
    kosong.append(new.city_name)
    
}

print(kosong)









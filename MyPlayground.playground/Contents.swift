// Write your code below 🎫
func bookingTicket(passengerName:String, seatClass: String = "Economy",  timeOfDeparture: Int) -> String {
  return ("\(passengerName), your seat class is \(seatClass), and you will be departing at \(timeOfDeparture).")
}

// Name: Muhammad Taha
// CMS ID: 518133
// Base Class
abstract class RideType{
  double calculateFare(double distance);
}
// Subclasses
// Bike Ride
class BikeRide extends RideType{
  @override
  double calculateFare(double distance) {
    return distance* 30;
  }
}
// Economy Car Ride
class CarRide extends RideType{
  @override
  double calculateFare(double distance) {
    return distance* 40;
  }
}
// Luxury Ride
class LuxuryRide extends RideType{
  @override
  double calculateFare(double distance) {
    return distance* 50;
  }
}

// Ride Class 
class Ride{
  double _distance = 0;
  double _fare = 0;
  RideType rideType;
  Ride(this.rideType);
  
  // Setter Function For Distance
  void setDistance(double distance){
    if(distance > 0){
    _distance = distance;
    _fare = rideType.calculateFare(_distance);
    }
    else{
      print("Invalid Distance");
    }
  }
  // Getter Function
  double get fare => _fare;
  double get distance => _distance;
}

// Class Customer
class Customer{
  String name;
  double _walletBalance;
  Customer(this.name, this._walletBalance);

  double get walletBalance => _walletBalance;
  void bookRide(Ride ride){
    print("\n$name is booking a ride of distance ${ride.distance} km");
    print("Distance: ${ride.distance} km");
    print("Fare: RS. ${ride.fare}");
    if(_walletBalance >= ride.fare){
      _walletBalance -= ride.fare;
      print("Ride booked successfully! Remaining Wallet Balance: RS. $_walletBalance");
    }
    else{
      print("Insufficient balance to book the ride.");
    }
  }
  void processBooking(Customer customer, RideType rideType, double distance) {
    Ride ride = Ride(rideType);
    ride.setDistance(distance);
    customer.bookRide(ride);
  }
}

// Main Fucntion
void main(){
  Customer customer = Customer("Taha", 10000);
  customer.processBooking(customer, BikeRide(), 30);
  customer.processBooking(customer, CarRide(), 20);
  customer.processBooking(customer, LuxuryRide(), 15);
}
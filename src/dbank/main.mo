import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 300;
  currentValue:= 100;

  let id = 2348923840928349;
  
 public func topUP(amount: Nat) {
  currentValue += amount;
  Debug.print(debug_show(currentValue))
 };

}



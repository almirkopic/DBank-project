import Debug "mo:base/Debug";

actor DBank {
  stablevar currentValue: Nat = 300;
// currentValue:= 100;

  let id = 2348923840928349;
  // Debug.print(debug_show(id));

 public func topUP(amount: Nat) {
  currentValue += amount;
  Debug.print(debug_show(currentValue))
 };
//allow users to withdrawl an amount from the currentValue
//Decrease the currentValue by the amount
 public func withdrawl(amount: Nat) { 
  let tempValue: Int = currentValue - amount;
  if(tempValue >= 0) {
  currentValue-= amount;
  Debug.print(debug_show(currentValue));
 } else{
  Debug.print("Amount too large, currentValue less than zero.")
 }
 };

public query func checkBalance(): async Nat {
return currentValue;
};




// topUp();
}










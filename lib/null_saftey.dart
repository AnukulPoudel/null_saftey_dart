// Throws error as temp is optional parameter which can have null value if passed nothing
// but the optional parameter has been made String type which means it needs to be string
// not null. So it throws error
// String serveCoffee([String temp]) {
//   return temp +' coffee';
// }

// Putting ? after type means that the parameter temp can now acceot values of 2 types
// one being null(if nothing is provided) and other being string.
// String serveCoffee([String? temp]) {
//   // Now since the temp can be null we cannot add null with coffee so,
//   // return temp +' coffee'; //-> will lead to error saying cannot concatinate as temo can be null
//   return ('$temp coffee'); //-> will not lead to error and prints null coffee is temp is null
// }

// null can be handled in various ways
String serveCoffee([String? temp]) {
  // one way to handle null is,
  // if (temp == null) {
  //   temp = 'hot';
  // }

  // Better way of writing above code is by using null-aware assignment operator,
  // this code checks the value of temp, if it is null then assigns
  // the value of right 'hot' to the temp. However if temp is not null
  // then temp remains unchaged
  // temp ??= 'hot';

  // return temp + ' coffee'; //-> will not say error, as dart is smart enough to know that if
  // temp is null then there is a condition that gives temp some value so that it can will not be null

  // Another way of dealing with null is,
  // by using '!' null aware assertion operator, which tells dart analyzer that the value of temp
  // will never be null. So when using ! we need to be carefull. Using it incorrectly can
  // lead to runtime error if the value of temp variable turns out to be null.
  // using '!' opts out static checking(done by compier of tool beforing runing code) and opting in runtime checking  
  return temp! + ' coffee';
}

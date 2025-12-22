method Triple(x: int) returns (r: int) {
  var y := 2 * x;
  r := x + y;
}

method TripleAssert(x: int) returns (r: int) {
  var y := 2 * x;
  r := x + y;
  assert r == 3 * x;
}

// 1.1
// method TripleAssert1(x: int) returns (r: int) {
//   var y := 2 * x;
//   r := x + y;
//   assert r == 3 * x + 1;
// }

// method TripleError(x: int) returns (r: int) {
//   var y := 2 * x;
//   r := x + y;
//   assert r == 10 * x; // ошибка - выполняется только когда x = 0
//   assert r < 5;
//   assert false; // ошибка - всегда ложь
// }

// 1.2
// method TripleError1(x: int) returns (r: int) {
//   var y := 2 * x;
//   r := x + y;
//   assert r == 10 * x; // ошибка - выполняется только когда x = 0
//   assert r > 5;
//   assert false; // ошибка - всегда ложь
// }

method Triple13(x: int) returns (r: int) {
  if x == 0 {
    r := 0;
  }
  else {
    var y := 2 * x;
    r := x + y;
  }
  assert r == 3 * x;
}

method Triple131(x: int) returns (r: int) {
  if {
    case x < 18 =>
      var a, b := 2 * x, 4 * x;
      r := (a + b) / 2;
    case 0 <= x =>
      var y := 2 * x;
      r := x + y;
  }
  assert r == 3 * x;
}

// 1.3
// method Caller() {
//   var t := Triple(18); // 54
//   assert t < 100;
// }

method Triple14(x: int) returns (r: int)
  ensures r == 3 * x{
  var y := 2 * x;
  r := x + y;
}

// method Triple141(x: int) returns (r: int)
//   // requires x % 2 == 0
//   ensures r == 3 * x{
//   var y := x / 2;
//   r := 6 * y;
// }

// 1.4
method Triple142(x: int) returns (r: int)
  requires x % 2 == 0
  ensures r == 3 * x{
  var y := x / 2;
  r := 6 * y;
}

method Caller() {
  var t := Triple141(18); // 54
  assert t < 100;
}

// 1.5
method Triple143(x: int) returns (r: int)
  requires x % 2 == 0 && x % 3 == 0
  ensures r == 3 * x{
  var y := x / 6;
  r := 18 * y;
}

method Triple144(x: int) returns (r: int)
  requires x % 2 == 0 && x % 3 == 0 && x % 5 == 0
  ensures r == 3 * x {
  var y := x / 30;
  r := 90 * y;
}

method Caller1() {
  var t := Triple144(30); // 54
  assert t < 100;
}

method Index(n: int) returns (i: int)
requires 1 <= n
ensures 0 <= i <n
{
  i:= n / 2;
}

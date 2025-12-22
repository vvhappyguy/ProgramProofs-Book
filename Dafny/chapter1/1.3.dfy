function Average( a : int, b: int) : int {
  (a + b) / 2
}

// 1.9
// a
method Triple'(x: int) returns (r: int)
  ensures Average (r, 3 * x) == 3 * x
  // ensures r % 3 == 0 // b
{
  // meets specs because of (dividing by 2)
  r := x + x + x + 1;
}

// a
method Triple2'(x: int) returns (r: int)
  ensures Average (r, 3 * x) == 3 * x
  ensures r % 3 == 0 // b
{
  r := x + x + x;
}

method Triple1'(x: int) returns (r: int)
  ensures Average (2 * r, 6 * x) == 6 * x
{
  r := 3 * x;
}

// c
method CallerTriple()
{
  var x := 1;
  var a := Triple2'(x);
  var b := Triple1'(x);
  assert a == b;
}
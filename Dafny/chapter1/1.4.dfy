// Two equivalents of defining evenness
predicate IsEven(x: int)
{
  x % 2 == 0
}

function IsEvenFunc(x: int) : bool
{
  x % 2 == 0
}

method IllegalAssignment() returns (y: int) {
  ghost var x := 10;
  // y := 2 * x; // error: can't assign ghost to compilable variable
  y := 0;
}

// 1.10
function Average(a: int, b: int): int {
  (a + b) / 2
}

ghost method Triple(x: int) returns (r: int) 
ensures r == 3 * x
{
  r := Average(2*x, 4*x);
}
method Index1(n: int) returns (i: int)
requires 1 <= n
ensures 0 <= i <n
{
  i:= n / 2;
}

method Index2(n: int) returns (i: int)
requires 1 <= n
ensures 0 <= i <n
{
  i:= 0;
}

// 1.6
// verified but doesn't work right
method Min(x: int, y: int) returns (m: int)
  ensures m <= x && m <= y {
    if x <= y {
      m := x - 1;
    } else {
      m := y; 
    }
  }

// correct version
method Min1(x: int, y: int) returns (m: int)
  ensures m <= x && m <= y
  ensures m == x || m == y {
    if x <= y {
      m := x;
    } else {
      m := y; 
    }
  }

// 1.7
method MaxSum(x: int, y: int) returns (s: int, m: int)
  ensures m >= x && m >= y
  ensures m == x || m == y
  ensures s == x + y
{
  s:= x+y;
  if x <= y {
    m := y;
  } else {
    m := x; 
  }
}

method MaxSumCaller()
{
  var s, m := MaxSum(1928, 1);
  assert s == 1929;
  assert m == 1928;
}

// 1.8
method ReconstructFromMaxSum(s: int, m: int) returns (x: int, y: int)
requires s - m <= m
ensures s == x + y
ensures (m == x || m == y) && x <= m && y <= m
{
  x := m;
  y := s - m;
}

method TestMaxSum(x: int, y: int)
{
  var s, m := MaxSum(x, y);
  var xx, yy := ReconstructFromMaxSum(s, m);
  assert (xx == x && yy == y) || (yy == x && xx == y);
}
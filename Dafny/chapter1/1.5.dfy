// 1.11

function F(): int {
  29
}

method M() returns (r: int)
ensures r == 29 // 1.11 c
{
  r:= 29;
}

method Caller(){
  var x := F();
  var y := M();
  assert x == 29;
  assert y == 29;
}
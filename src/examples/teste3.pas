program Teste3;
begin
  x := 2 + 3 * 4;
  y := (2 + 3) * 4;
  z := -x + y;
  ok := true;
  if (x < y) and not (z = 0) or false then
    write(x * y)
end.
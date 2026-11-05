program Teste1;
begin
  read(n);
  soma := 0;
  i := 1;
  while i <= n do
  begin
    if (i - (i / 2) * 2 = 0) and not (i = 4) then
      soma := soma + i * 2
    else
      soma := soma - 1;
    i := i + 1
  end;
  write(soma)
end.

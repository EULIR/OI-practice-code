var
  n,i,z,s,j:longint;
begin
  readln(n);
  i:=1;
  z:=0;
  s:=0;
  while i<=n do
      begin
        inc(z);
        for j:=1 to z do
          begin
            inc(s,z);
            //writeln(s);
            inc(i);
            if i>n then break;
          end;
      end;
  writeln(s);
end.
var
  a,b:array[0..10,0..10]of longint;
  k,i,j,n:longint;
begin
  read(a[5,5],n);
    for k:=1 to n do
    begin
    for i:=1 to 9 do
      for j:=1 to 9 do

        begin
          b[i-1,j-1]:=b[i-1,j-1]+a[i,j];
          b[i-1,j]:=b[i-1,j]+a[i,j];
          b[i-1,j+1]:=b[i-1,j+1]+a[i,j];
          b[i,j-1]:=b[i,j-1]+a[i,j];
          b[i,j+1]:=b[i,j+1]+a[i,j];
          b[i+1,j+1]:=b[i+1,j+1]+a[i,j];
          b[i+1,j]:=b[i+1,j]+a[i,j];
          b[i+1,j-1]:=b[i+1,j-1]+a[i,j];
          b[i,j]:=b[i,j]+a[i,j]*2;
        end;
        for i:=1 to 9 do
          for j:=1 to 9 do
            a[i,j]:=b[i,j];
          fillchar(b,sizeof(b),0);
        end;
  for i:=1 to 9 do
    begin
      for j:=1 to 9 do
        write(a[i,j],' ');
      writeln;
    end;
end.

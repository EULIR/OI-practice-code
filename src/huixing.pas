var
  m,n,i,j,k,x,y,t:longint;
  a:array[0..101,0..101]of longint;
  b:array[0..101,0..101]of boolean;
  dx:array[0..3]of longint=(0,1,0,-1);
  dy:array[0..3]of longint=(1,0,-1,0);
begin
  readln(m,n);
  for i:=1 to m do
    begin
      for j:=1 to n do
        read(a[i,j]);
      readln;
    end;
  fillchar(b,sizeof(b),false);
  for i:=1 to m do
    for j:=1 to n do
      b[i,j]:=true;
  x:=1;
  y:=1;
  while t<m*n do
    begin
      if b[x+dx[k],y+dy[k]]=false then k:=(k+1)mod 4
                                  else begin writeln(a[x,y]); b[x,y]:=false; x:=x+dx[k]; y:=y+dy[k]; inc(t); end;
    end;
end.
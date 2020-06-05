const 
  SzM = 10; 
  SzN = 10; 
  
var 
  Flag : boolean;
  
 
type Matrix = array [1..SzM,1..SzN] of integer;
 
begin
  var m := 4;
  var n := 4;
  write('M:');
  readln(m);
  write('N:');
  readln(n);
  

  for var i:=1 to M do 
  for var j:=1 to N do 
    Matrix[i,j] := Random(100);

  
 
 
  writeln('Элементы матрицы: ');
  
  begin
  for var i:=1 to M do 
  begin
    for var j:=1 to N do 
      write(Matrix[i,j]:4);
    writeln;  
  end;
end;
  
  begin
  for var i:=1 to M do 
  begin
   for var j:=1 to N do
      begin
  Flag := True;
    for k := 2 to Trunc(Sqrt(a[i,j])) do begin
      Flag := Matrix[i,j] mod k <> 0;
      if not Flag then
        break;
    end;
    if Flag then
      begin
      writeln(Matrix[i,j], ' - Простое число!', ' i=',i,' j=', j);
      end;
      end;
  end;
end;
  
  

end.

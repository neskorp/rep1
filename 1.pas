const 
  SzM = 10; 
  SzN = 10; 
  
var 
  Flag : boolean;
  
 
type Matrix = array [1..SzM,1..SzN] of integer;

procedure FillMatrixByRandom(var a: Matrix; m,n: integer); // Заполнение случайными
begin
  for var i:=1 to M do 
  for var j:=1 to N do 
    a[i,j] := Random(100);
end;
 
procedure PrintMatrix(const a: Matrix; m,n: integer); // Вывод матрицы
begin
  for var i:=1 to M do 
  begin
    for var j:=1 to N do 
      write(a[i,j]:4);
    writeln;  
  end;
end;

procedure Simple (const a: Matrix; m,n,k: integer); // Поиск простых чисел и индексов
begin
  for var i:=1 to M do 
  begin
   for var j:=1 to N do
      begin
  Flag := True;
    for k := 2 to Trunc(Sqrt(a[i,j])) do begin
      Flag := a[i,j] mod k <> 0;
      if not Flag then
        break;
    end;
    if Flag then
      begin
      writeln(a[i,j], ' - Простое число!', ' i=',i,' j=', j);
      end;
      end;
  end;
end;

var a: Matrix;
 
begin
  var m := 4;
  var n := 4;
  write('M:');
  readln(m);
  write('N:');
  readln(n);
  FillMatrixByRandom(a,m,n);
  writeln('Элементы матрицы: ');
  PrintMatrix(a,m,n);
  Simple(a,m,n,2);
end.

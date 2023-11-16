program z5lab10;
const
n=5;
 
type
  A = array [1..n, 1..n] of Integer;
  B = array [1..n] of Integer;
 
var
  matrix: A;
  rowMax: B;
  result: array [1..n] of Integer;
  i, j, max, count: Integer;
 
begin
  // Заполняем двумерный массив
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      matrix[i, j] := random(10); 
      write(matrix[i, j], ' ');
    end;
    writeln;
  end;
  
  // Находим максимум в каждой строке
  for i := 1 to n do
  begin
    max := matrix[i, 1];
    for j := 2 to n do
    begin
      if matrix[i, j] > max then
        max := matrix[i, j];
    end;
    rowMax[i] := max;
  end;
  
  // Формируем одномерный массив
  for i := 1 to n do
  begin
    count := 0;
    for j := 1 to n do
    begin
      if matrix[i, j] = rowMax[i] then
        Inc(count);
    end;
    
    if count = 1 then
      result[i] := 1
    else
      result[i] := -1;
  end;
  
  // Выводим результат
  writeln;
  for i := 1 to n do
    write(result[i], ' ');
    
  readln;
end.
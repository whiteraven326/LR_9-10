program z3_10;

type
  arr = array[1..8, 1..8] of integer;
  arr1 = array[1..8] of integer;

var
  array1: arr;
  array2: arr1;
  i, j: integer;

begin
  randomize;
  
  // заполняем массив случайными числами
  for i := 1 to 8 do
    for j := 1 to 8 do
      array1[i, j] := random(20) - 10;
  
  // выводим массив на экран
  writeln('Исходный массив:');
  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
      write(array1[i, j], ' ');
    writeln();
  end;
  
  // проверяем каждую строку на наличие пары соседних элементов, сумма которых равна 7
  for i := 1 to 8 do
  begin
    array2[i] := -1;
    
    for j := 1 to 7 do
    begin
      if (array1[i, j] + array1[i, j+1]) = 7 then
      begin
        array2[i] := 1;
        break;
      end;
    end;
  end;
  
  // выводим одномерный массив на экран
  writeln();
  
  writeln('Результирующий массив:');
  for i := 1 to 8 do
    write(array2[i], ' ');
end.

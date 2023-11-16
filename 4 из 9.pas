program z4_9;

type
  arr = array[1..10] of integer;

var
  array1, array2: arr;
  i, sum1, sum2: integer;

begin
  randomize;
  
  // заполняем массивы случайными числами
  for i := 1 to 10 do
  begin
    array1[i] := random(20) - 10;
    array2[i] := random(20) - 10;
  end;
   writeln('Исходный массив array1:');
  for i := 1 to 10 do
    write(array1[i], ' ');
  
  writeln();
  
  writeln('Исходный массив array2:');
  for i := 1 to 10 do
    write(array2[i], ' ');
  writeln();
  
  // находим суммы положительных элементов в каждом массиве
  sum1 := 0;
  sum2 := 0;
  
  for i := 1 to 10 do
  begin
    if array1[i] > 0 then
      sum1 := sum1 + array1[i];
    
    if array2[i] > 0 then
      sum2 := sum2 + array2[i];
  end;
  
  // если сумма в первом массиве меньше, умножаем его элементы на 10
  if sum1 < sum2 then
  begin
    for i := 1 to 10 do
      array1[i] := array1[i] * 10;
  end;

  // выводим массивы на экран
  writeln('Массив array1:');
  for i := 1 to 10 do
    write(array1[i], ' ');
  
  writeln();
  
  writeln('Массив array2:');
  for i := 1 to 10 do
    write(array2[i], ' ');
end.
program z1_10;

type
  arr = array[1..6, 1..8] of integer;
  arr1 = array[1..6] of integer;

var
  array1: arr;
  array2: arr1;
  i, j, max, index: integer;

begin
  randomize;
  
  // заполняем массив случайными числами
  for i := 1 to 6 do
    for j := 1 to 8 do
      array1[i, j] := random(20) - 10;
  
  // выводим массив на экран
  writeln('Исходный массив:');
  for i := 1 to 6 do
  begin
    for j := 1 to 8 do
      write(array1[i, j], ' ');
    writeln();
  end;
  
  // находим первый элемент в каждой строке, больший по модулю 4
  for i := 1 to 6 do
  begin
    max := array1[i, 1];
    index := 1;
    
    for j := 2 to 8 do
    begin
      if abs(array1[i, j]) > abs(max) then
      begin
        max := array1[i, j];
        index := j;
      end;
    end;
    
    // если такого элемента нет, присваиваем нуль
    if abs(max) <= 4 then
      array2[i] := 0
    else
      array2[i] := max;
  end;
  
  // выводим одномерный массив на экран
  writeln();
  
  writeln('Результирующий массив:');
  for i := 1 to 6 do
    write(array2[i], ' ');
end.
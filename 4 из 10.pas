program z4_10;

type
  arr = array[1..8, 1..8] of integer;
  arr1 = array[1..8] of integer;

var
  array1: arr;
  array2: arr1;
  i, j: integer;
  sum, avg: real;

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
  
  // находим минимальные элементы в каждой строке и записываем их в одномерный массив
  for i := 1 to 8 do
  begin
    array2[i] := array1[i, 1];
    
    for j := 2 to 8 do
    begin
      if array1[i, j] < array2[i] then
        array2[i] := array1[i, j];
    end;
  end;
  
  // выводим одномерный массив на экран
  writeln();
  
  writeln('Результатный массив:');
  for i := 1 to 8 do
    write(array2[i], ' ');
  
  // находим среднее арифметическое элементов одномерного массива
  sum := 0;
  
  for i := 1 to 8 do
    sum := sum + array2[i];
  
  avg := sum / 8;
  
  // проверяем, содержит ли одномерный массив свое среднее арифметическое
  for i := 1 to 8 do
  begin
    if array2[i] = round(avg) then
    begin
      writeln();
      writeln('Одномерный массив содержит свое среднее арифметическое');
      writeln(avg);
      
      break;
    end;
  end;
end.
program Example;
const
  n = 10; // размер массива
var
  arr1, arr2: array[1..n] of integer;
  i, minIndex, maxIndex, minVal, maxVal: integer;
  foundMultipleOfFive: boolean;
begin
  // Заполнение массивов случайными значениями
  randomize;
  
  for i := 1 to n do
  begin
    arr1[i] := random(10); 
    arr2[i] := random(10);
  end;

  // Печать исходных массивов
  writeln('Исходный массив arr1:');
  for i := 1 to n do
  begin
    write(arr1[i], ' ');
  end;
  writeln;
  
  writeln('Исходный массив arr2:');
  for i := 1 to n do
  begin
    write(arr2[i], ' ');
  end;
  writeln;
  
  // Поиск первого кратного пяти элемента
  foundMultipleOfFive := false;
  for i := 1 to n do
  begin
    if (arr1[i] mod 5 = 0) then
    begin
      foundMultipleOfFive := true;
      break;
    end;
  end;
  
  // Замена максимального элемента на 0 в массиве arr1, если найдено кратное пяти значение
  if foundMultipleOfFive then
  begin
    maxVal := arr1[1];
    maxIndex := 1;
    
    for i := 2 to n do
    begin
      if arr1[i] > maxVal then
      begin
        maxVal := arr1[i];
        maxIndex := i;
      end;
    end;
    
    arr1[maxIndex] := 0;
  end;
  
  // Найдение минимального элемента в массиве arr2
  minVal := arr2[1];
  minIndex := 1;
  
  for i := 2 to n do
  begin
    if arr2[i] < minVal then
    begin
      minVal := arr2[i];
      minIndex := i;
    end;
  end;
  
  // Умножение на 2 элементов, находящихся после минимального значения в массиве arr2
  for i := minIndex + 1 to n do
  begin
    arr2[i] := arr2[i] * 2;
  end;
  
  // Печать измененных массивов
  writeln('Измененный массив arr1:');
  for i := 1 to n do
  begin
    write(arr1[i], ' ');
  end;
  writeln;
  
  writeln('Измененный массив arr2:');
  for i := 1 to n do
  begin
    write(arr2[i], ' ');
  end;
  writeln;
  
  readln;
end.
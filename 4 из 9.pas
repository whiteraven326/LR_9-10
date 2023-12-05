program z4_9;
// добавить функции чтобы были фактические как в 3

type
  arr = array[1..10] of integer;
  
  function find(arr: arr): integer; //по значению и формальные
var
  arr1: array [1..10] of integer;
  array2: array [1..10] of integer;//локальная
  i, sum1, sum2: integer;

begin
  randomize;
  for i := 1 to 10 do
  begin
    arr1[i] := random(20) - 10;
    array2[i] := random(20) - 10;
  end;
   writeln('Исходный массив array1:');
  for i := 1 to 10 do
    write(arr1[i], ' '); 
  
  writeln();
  
  writeln('Исходный массив array2:');
  end;
  function findLast(arr: arr): integer; //по значению, формальные
var  //локальная
  i, index: integer; 
   sum1, sum2: integer;
  
   begin
    for i := 1 to 10 do 
    begin
       write(arr[i], ' ');
  writeln();
  
  // находим суммы положительных элементов в каждом массиве
  sum1 := 0;
  sum2 := 0;
    end;
   end;
  
   
   //function findLast(arr: arr): integer; //по значению, формальные
var  //локальная
  i, index: integer; 
  index := 0;
 begin
    for i := 1 to 10 do
    begin
      if array1[i] > 0 then
      sum1 := sum1 + arr1[i];
    
    if array2[i] > 0 then
      sum2 := sum2 + arr2[i];
    end;
  end;

  var  //локальная
  i, n: integer;
 begin 
   for i := 1 to 10 do 
     begin
       
      // если сумма в первом массиве меньше, умножаем его элементы на 10
  if sum1 < sum2 then  
    
    for i := 1 to 10 do
      array1[i] := array1[i] * 10;
  
  // выводим массивы на экран
  writeln('Массив array1:');
  for i := 1 to 10 do
    write(arr1[i], ' '); //фактические
  
  writeln();
  
  writeln('Массив array2:');
 end;
  for i := 1 to 10 do
    write(arr2[i], ' '); //фактические
end.

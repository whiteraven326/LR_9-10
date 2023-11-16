program z3_95;

type
  arr = array[1..10] of integer;

function find(arr: arr): integer;
var
  i, index: integer;
begin
  index := 0;
  for i := 1 to 10 do
  begin
    if arr[i] > 0 then
    begin
      index := i;
      break;
    end;
  end;
  find := index;
end;

function findLast(arr: arr): integer;
var
  i, index: integer;
begin
  index := 0;
  for i := 1 to 10 do
  begin
    if arr[i] < 0 then
      index := i;
  end;
  findLast := index;
end;

var
  array1: arr;
  i, n: integer;

begin
  writeln('Введите элементы массива:');
  for i := 1 to 10 do
    readln(array1[i]);
  
  n := find(array1);
  
  if n = 0 then
    writeln('Положительных элементов нет')
  else
    writeln('Номер первого положительного элемента: ', n);
  
  n := findLast(array1);
  
  if n = 0 then
    writeln('Отрицательных элементов нет')
  else
    writeln('Номер последнего отрицательного элемента: ', n);
end.
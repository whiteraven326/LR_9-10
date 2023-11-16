program z2_9;

var
  arr: array[1..10] of integer;
  n, i, min, index, max: integer;

begin
  write('Введите размер массива: ');
  readln(n);
  writeln('Введите элементы массива:');
  for i := 1 to n do
    readln(arr[i]);
  
  min := arr[1];
  max := arr[1];
  index := 1;
  
  for i := 2 to n do
  begin
    if arr[i] < min then
    begin
      min := arr[i];
      index := i;
    end;
    if arr[i] > max then
      max := arr[i];
  end;
  
  writeln('Максимальный элемент массива: ', max);
  writeln('Номер минимального элемента: ', index);
end.
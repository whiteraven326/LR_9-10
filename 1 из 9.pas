program z1lab9;
const
  N = 5;
type
  TArray = array[1..N] of Integer;
function pr(a: TArray): Integer;
var
  i, product: Integer;
begin
  product := 1;
  for i := 1 to N do
  begin
    if (a[i] mod 2 = 0) then // проверяем, является ли элемент четным
      product := product * a[i];
  end;
  pr := product;
end;

var
  a: TArray;
  i, result: Integer;
begin
  for i := 1 to N do
    a[i] := Random(10) + 1;
  writeln('Исходный массив:');
  for i := 1 to N do
    write(a[i], ' ');
  writeln;
  result := pr(a);
  writeln('Произведение четных элементов массива: ', result);
end.
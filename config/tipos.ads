package tipos is

Max_Columnas: constant integer:=9;
Max_Filas: constant Integer:=6;

type color is (Rojo, Amarillo, Nada);

type tablero is array (1..Max_Filas,1..Max_Columnas) of color;

end tipos;
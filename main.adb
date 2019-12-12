with 
    escribir_intro
    ,menu
    ,escribir_tabla
    ,tipos;

use tipos;

with Ada.Text_Io;use  Ada.Text_Io;

procedure main is
    tabla: tablero;
begin
  
    for i in 1..Max_Filas loop
        for j in 1..Max_columnas loop
            tabla(i,j) := nada;
        end loop;
    end loop;

    tabla(6,5) := Amarillo;
    tabla(6,6) := Rojo;
    tabla(5,5) := Amarillo;
    --escribir_intro;
    --menu;
    escribir_tabla(tabla);

end main;
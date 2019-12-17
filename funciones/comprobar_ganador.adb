with tipos;use tipos;
with comprobar_linea_horizontal
    ,comprobar_lina_vertical
    ,comprobar_diagonal_derecha
    ,comprobar_diagonal_izquierda;
with Ada.Text_Io;use  Ada.Text_Io;

function comprobar_ganador(tabla: tablero) return color is
    ganador: color := nada;
    fila,columna,limite_columna,limite_fila : Integer;
 
begin
    fila := Max_filas;
    columna := 1;
    limite_columna := Max_Columnas-2;
    limite_fila := 3;

    while fila >0 loop

        --Comprobar lina horizontal
        while columna <= Max_Columnas loop
            if 
                comprobar_linea_horizontal(tabla,fila,columna) 
                OR
                comprobar_lina_vertical(tabla,fila,columna) 
                OR
                comprobar_diagonal_derecha(tabla,fila,columna) 
                OR 
                comprobar_diagonal_izquierda(tabla,fila,columna)
            then
                ganador := tabla(fila,columna);
                columna := Max_Columnas;
                fila:= 0;
            end if;

        columna := columna+1;
        end loop;

    columna := 1;
    fila := fila-1;
    end loop;   

    return ganador;

end comprobar_ganador;
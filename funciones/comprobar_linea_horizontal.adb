 with tipos; use tipos;   

function comprobar_linea_horizontal(tabla: tablero;fila,columna: integer) return boolean is
    linea: Boolean := false;
    limite_columna : Integer;
begin
    limite_columna:= Max_columnas -3;
    if 
        columna<= limite_columna
        AND tabla(fila,columna) /= nada
    then
        if 
            tabla(fila,columna) = tabla(fila,columna+1)
            AND
            tabla(fila,columna) = tabla(fila,columna+2)
            AND
            tabla(fila,columna) = tabla(fila,columna+3)
        then
            linea:= true;
        end if;
    end if;

    return linea;
end comprobar_linea_horizontal;
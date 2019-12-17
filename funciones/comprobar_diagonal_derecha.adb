with tipos; use tipos;   

function comprobar_diagonal_derecha(tabla: tablero;fila,columna: integer) return boolean is
    linea: Boolean := false;
    limite_fila,limite_columna : Integer;

begin
    limite_fila := 4;
    limite_columna := Max_Columnas-3;

    if 
        fila >= limite_fila
        AND 
        columna <= limite_columna
        AND 
        tabla(fila,columna) /= nada
    then
        if             
            tabla(fila,columna) = tabla(fila-1,columna+1)
            AND
            tabla(fila,columna) = tabla(fila-2,columna+2)
            AND
            tabla(fila,columna) = tabla(fila-3,columna+3)
        then
            linea:= true;
        end if;
    end if;

    return linea;
end comprobar_diagonal_derecha;
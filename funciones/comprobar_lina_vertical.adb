with tipos; use tipos;   

function comprobar_lina_vertical(tabla: tablero;fila,columna: integer) return boolean is
    linea: Boolean := false;
    limite_fila : Integer;
begin
    limite_fila:= 4;
    if 
        fila >= limite_fila
        AND tabla(fila,columna) /= nada
    then
        if             
            tabla(fila,columna) = tabla(fila-1,columna)
            AND
            tabla(fila,columna) = tabla(fila-2,columna)
            AND
            tabla(fila,columna) = tabla(fila-3,columna)
        then
            linea:= true;
        end if;
    end if;

    return linea;
end comprobar_lina_vertical;
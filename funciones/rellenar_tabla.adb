with tipos; use tipos;

procedure rellenar_tabla(tabla: in out Tablero) is

begin
    for i in 1..Max_Filas loop
        for j in 1..Max_columnas loop
            tabla(i,j) := nada;
        end loop;
    end loop;


end rellenar_tabla;
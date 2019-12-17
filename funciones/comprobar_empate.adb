with tipos; use tipos;

function comprobar_empate(tabla: tablero) return Boolean is
    i:Integer:=1;
    empate : Boolean := true;
begin
    while i<=Max_Columnas loop
        if tabla(1,i) = nada then
            empate := false;
            i := Max_Columnas;
        end if;
        
        i := i+1;
    end loop;

    return empate;

end comprobar_empate;
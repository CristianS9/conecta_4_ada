with tipos; use tipos;
with Ada.Text_Io;use  Ada.Text_Io;

procedure meter_ficha(columna: in Integer;color_jugador:in color; tabla: in out tablero) is
    pos:integer := 0;
begin
    for i in tabla'range (1) loop
        if tabla(i,columna) = Nada then
            pos := i;
        end if;
        
    end loop;
    
    if pos > 0 then
        tabla(pos,columna) := color_jugador;
    end if;

   

end meter_ficha;
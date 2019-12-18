with tipos; use tipos;
with Ada.Text_Io;use  Ada.Text_Io;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure meter_ficha(columna: in Integer;color_jugador : in color; tabla: in out tablero;correcto: out Boolean) is
    pos:integer := 0;
    i: Integer := 1;
begin
    correcto := false;
    while i <= Max_Filas loop
        if tabla(i,columna) = Nada then
            pos := i;
        else 
            i := Max_Filas;
        end if;
        i := i+1;
    end loop;

    
    if color_jugador = nada then
        pos := pos+1;
    end if;

    if pos > 0 then
        tabla(pos,columna) := color_jugador;
        correcto := true;
    end if;

    
   

end meter_ficha;
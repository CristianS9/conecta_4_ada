with tipos; use tipos;
with Ada.Text_Io;use  Ada.Text_Io;

procedure meter_ficha(columna,jugador: in Integer; tabla: in out tablero;correcto: out Boolean) is
    pos:integer := 0;
    color_jugador: color;
begin
    correcto := false;

    for i in tabla'range (1) loop
        if tabla(i,columna) = Nada then
            pos := i;
        end if;
    end loop;
    if jugador=1 then
        color_jugador := Rojo;
    elsif jugador=2 then
        color_jugador := Amarillo;
    end if;

    if pos > 0 then
        tabla(pos,columna) := color_jugador;
        correcto := true;
    end if;

   

end meter_ficha;
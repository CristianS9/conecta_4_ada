with tipos
    ,tipos_santa
    ,valor_por_jugada
    ,escribir_santa_pensando
    ;

use tipos
    ,tipos_santa
    ;


with Ada.Text_Io;use  Ada.Text_Io;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure santa(tabla: in out Tablero;jugador: in color;fila: out Integer) is
    puntos: puntos_opcion := (others => 0);
    pos_mayor, punt_mayor : Integer;
    

    -- @ ATENCION   santa es mucho mas inteligente pero tarda mas en pensar
        modo_pro : boolean:= false;
    -- @ ATENCION   santa es mucho mas inteligente pero tarda mas en pensar

begin
    escribir_santa_pensando;
    valor_por_jugada(tabla,jugador,puntos,modo_pro);
    pos_mayor:= 5;
    punt_mayor:= -9999999;

    for i in puntos'range loop
        if puntos(i) > punt_mayor then
            punt_mayor := puntos(i);
            pos_mayor := i;
        elsif puntos(i) = punt_mayor then 
            if abs(5- i) < abs(5-pos_mayor) then
                punt_mayor := puntos(i);
                pos_mayor := i;
            end if;
        end if;
    end loop;

     fila := pos_mayor;

end santa;
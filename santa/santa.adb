with tipos
    ,tipos_santa
    ,valor_por_jugada
    ,cambiar_color
    ,escribir_santa_pensando
    ,posible_ganador
    ;

use tipos
    ,tipos_santa
    ;


with Ada.Text_Io;use  Ada.Text_Io;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure santa(tabla: in out Tablero;jugador_in: in color;fila: out Integer) is
    puntos: puntos_opcion := (others => 0);
    posibles_ganadores: array_ganador := (others => nada);
    pos_mayor, punt_mayor : Integer;
    fin:Boolean:= false;
    i : Integer := 1;
    jugador: color;

    -- @ ATENCION   santa es mucho mas inteligente pero tarda mas en pensar
        modo_pro : boolean:= false;
    -- @ ATENCION   santa es mucho mas inteligente pero tarda mas en pensar

begin
    jugador := jugador_in;
    escribir_santa_pensando;
    pos_mayor:= 5;
    punt_mayor:= -9999999;

    posible_ganador(tabla,posibles_ganadores);

    while i<= Max_columnas loop
        if posibles_ganadores(i) = jugador then
            pos_mayor := i;
            fin := true;
        end if;
        i:= i+1;
    end loop;

    if fin = false then
        cambiar_color(jugador);
        i:= 1;
        while i<= Max_columnas loop
            if posibles_ganadores(i) = jugador then
                pos_mayor := i;
                fin := true;
            end if;
            i:= i+1;
        end loop;
        cambiar_color(jugador);
    end if;


    if fin = false then
        valor_por_jugada(tabla,jugador,puntos,modo_pro);
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
    end if;

     fila := pos_mayor;

end santa;
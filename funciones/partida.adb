with tipos
    ,escribir_tabla
    ,rellenar_tabla
    ,meter_ficha
    ,comprobar_empate
    ,escribir_pedir_ficha
    ,comprobar_ganador
    ,escribir_ganador
    ,Nt_Console;
    

use tipos
    ,nt_console;

with Ada.Text_Io;use  Ada.Text_Io;

with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure partida(tipo_partida: in Integer) is
    tabla: tablero;
    pos:Integer := 0;
    fin: boolean := false;
    jugador: integer := 1;
    color_ganador: color;
    jugador_ganador: Integer;
    ficha_introducida : Boolean;
begin
    rellenar_tabla(tabla);
    ficha_introducida := false;
    while fin /= true loop
        -- Comprueba que la columna introducida no este llena
        while ficha_introducida = false loop
            pos := 0;
            -- Comprueba que sea una de las columnas existentes
            while pos<1 OR pos>Max_Columnas loop
                clear_screen;
                escribir_tabla(tabla);
                escribir_pedir_ficha(jugador);
                Get(pos);
            end loop;

            meter_ficha(pos,jugador,tabla,ficha_introducida);
        end loop;

        -- Comprueba si hay algun ganador
        color_ganador := comprobar_ganador(tabla);

        -- Comprueba si hay algun ganador
        if color_ganador /=nada then
            fin := true;
            if color_ganador = rojo then
                jugador_ganador := 1;
            else 
                jugador_ganador := 2;
            end if;
        
        -- Comprueba si hay empate
        elsif comprobar_empate(tabla) then
            fin := true;
            jugador_ganador := 0;
        end if;

        -- Cambia de jugador para la proxima
        if jugador = 1 then
            jugador := 2;
        else 
            jugador := 1;
        end if;


        -- Preparar las variables para la siguiente
        pos:= 0;
        ficha_introducida:= false;
        
    end loop;
    clear_screen;
    escribir_tabla(tabla);
    escribir_ganador(jugador_ganador);
end partida;
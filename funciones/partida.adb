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

with santa;

procedure partida(tipo_partida,empieza_in: in  Integer) is
    tabla: tablero;
    pos:Integer := 0;
    fin: boolean := false;
    jugador: color := Rojo;
    jugador_ganador: color;
    ficha_introducida,a : Boolean;
    empieza,pos_ia: Integer;
    primero: Boolean := true;

    
begin
    rellenar_tabla(tabla);
    ficha_introducida := false;
    empieza := empieza_in;

    clear_screen;
    while fin /= true loop
        if tipo_partida = 2 and empieza = 2 then
            santa(tabla,jugador,pos_ia);
            meter_ficha(pos_ia,jugador,tabla,a);
            empieza := 1;
        else 
            -- Comprueba que la columna introducida no este llena
            if primero  OR tipo_partida = 1 then
                while ficha_introducida = false loop
                    pos := 0;
                    -- Comprueba que sea una de las columnas existentes
                    while pos<1 OR pos>Max_Columnas loop
                        --clear_screen;
                        escribir_tabla(tabla);
                        escribir_pedir_ficha(jugador);
                        Get(pos);
                    end loop;

                    meter_ficha(pos,jugador,tabla,ficha_introducida);
                end loop;

             
            elsif tipo_partida = 2 then
                escribir_tabla(tabla);
                santa(tabla,jugador,pos_ia);
                meter_ficha(pos_ia,jugador,tabla,a);
              
            end if;

            if primero then
                primero := false;
            else
                primero := true;
            end if;
    
        end if;
     

        -- Comprueba si hay algun ganador
        jugador_ganador := comprobar_ganador(tabla);

        -- Comprueba si hay algun ganador
        if jugador_ganador /=nada then
            fin := true;
        
        -- Comprueba si hay empate
        elsif comprobar_empate(tabla) then
            fin := true;
        end if;

        -- Cambia de jugador para la proxima
        if jugador = rojo then
            jugador := amarillo;
        else 
            jugador := rojo;
        end if;

        -- Preparar las variables para la siguiente
        pos:= 0;
        ficha_introducida:= false;
        
    end loop;
    clear_screen;
    escribir_tabla(tabla);
    escribir_ganador(jugador_ganador);
end partida;
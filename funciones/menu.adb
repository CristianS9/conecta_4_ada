with escribir_menu
    ,menu_jugador_vs_ia
    ,menu_jugador_vs_jugador;

with Ada.Text_Io;use  Ada.Text_Io;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Nt_Console;use nt_console;

procedure menu is
    opcion: Integer := 0;
begin
    -- Para poder capatar la opcion de salida
    escribir_menu(true);
    get(opcion);

    -- Opcion de salida
    while opcion /=3 loop

        while opcion /= 1 AND opcion /= 2 loop
            escribir_menu(true);
            get(opcion);
        end loop;

        if opcion=1 then
            menu_jugador_vs_jugador;
        elsif opcion=2 then
            menu_jugador_vs_ia;
        end if;

        -- Fin de partida para que salga el menu
        escribir_menu(false);
        get(opcion);

    end loop;

    clear_screen;

 
  
end menu;
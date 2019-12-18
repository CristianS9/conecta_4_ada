with Ada.Text_Io
    ,tipos
    ,partida
    ,escribir_menu_ia
    ;

use  Ada.Text_Io,tipos;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Nt_Console;use nt_console;

procedure menu_jugador_vs_ia is
    opcion: Integer;
begin
    escribir_menu_ia;
    get(opcion);

      while opcion < 1 AND opcion > 3 loop
            escribir_menu_ia;
            get(opcion);
      end loop;

    partida(2,opcion);
end menu_jugador_vs_ia;
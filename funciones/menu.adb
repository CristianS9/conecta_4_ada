with escribir_menu;
with Ada.Text_Io;use  Ada.Text_Io;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Nt_Console;use nt_console;

procedure menu is
    opcion: Integer := 0;
begin
    while opcion /= 1 AND opcion /= 2 loop
        escribir_menu;
        get(opcion);
    end loop;
    clear_screen;
    new_line;
    Put("ha elegido " & opcion'image);
end menu;
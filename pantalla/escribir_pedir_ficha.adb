with Ada.Text_Io;use  Ada.Text_Io;
with Nt_Console;use nt_console;

procedure escribir_pedir_ficha(jugador: integer) is

begin
    if jugador = 1 then
        set_foreground(red);
    else 
        set_foreground(yellow);
    end if;
    new_line;
    put("               ************************************************");
    new_line;
    put("                                 JUGADOR "& jugador'image &"                       ");
    new_line;
    put("               ************************************************");
    new_line;
    put("                        En que fila colocara la ficha???");
    new_line;
    put("               ************************************************");
    new_line;
    set_foreground;


end escribir_pedir_ficha;
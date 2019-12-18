with Ada.Text_Io;use  Ada.Text_Io;
with Nt_Console;use nt_console;
with tipos; use tipos;

procedure escribir_pedir_ficha(jugador: in color) is

begin

    if jugador = Rojo then
        set_foreground(red);
    else 
        set_foreground(yellow);
    end if;
    new_line;
    put("               ************************************************");
    new_line;
    if jugador = rojo then
        put("                                 JUGADOR ROJO                   ");
    else 
        put("                              JUGADOR AMARILLO                  ");

    end if;
    new_line;
    put("               ************************************************");
    new_line;
    put("                        En que fila colocara la ficha???");
    new_line;
    put("               ************************************************");
    new_line;
    set_foreground;


end escribir_pedir_ficha;
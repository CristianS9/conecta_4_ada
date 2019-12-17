with Ada.Text_Io;use  Ada.Text_Io;
with Nt_Console;use nt_console;

procedure escribir_menu(limpiar: in Boolean) is
    procedure e_borde is begin
        set_background;
        Put("  ");
    end e_borde;

    procedure e_columna is begin
        set_background(green);
        put("   ");
        set_background;
    end e_columna;
begin
    if limpiar then
        clear_screen;
    end if;
    
    new_line;
    new_line;
    new_line;

    e_borde;
    set_background(green);
    put("                                                             ");
    set_background;
    new_line;

    e_borde;    
    e_columna;
    put("                                                       ");
    e_columna;
    new_line;

    e_borde;    
    e_columna;
    put("       CONECTA 4       CONECTA 4       CONECTA 4       ");
    e_columna;
    new_line;

    e_borde;
    e_columna;
    put("                                                       ");
    e_columna;
    new_line;
        
    e_borde;
    set_background(green);
    put("                                                             ");
    set_background;
    new_line;

    e_borde;
    e_columna;
    put("                                                       ");
    e_columna;
    new_line;

    e_borde;
    e_columna;
    Put("             1. Jugador vs Jugador                     ");
    e_columna;
    new_line;

    e_borde;
    e_columna;
    put("                                                       ");
    e_columna;
    new_line;

    e_borde;
    e_columna;
    Put("             2. Jugador vs IA                          ");
    e_columna;
    new_line;

    e_borde;
    e_columna;
    put("                                                       ");
    e_columna;
    new_line;

    e_borde;
    e_columna;
    Put("             3. Salir                                  ");
    e_columna;
    new_line;

    e_borde;
    e_columna;
    put("                                                       ");
    e_columna;
    new_line;

    e_borde;
    set_background(green);
    put("                                                             ");
    set_background;
    new_line;

    set_background;

end escribir_menu;


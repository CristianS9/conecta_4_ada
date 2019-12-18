with Ada.Text_Io;use  Ada.Text_Io;
with Nt_Console;use nt_console;

procedure escribir_menu_ia is
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
    clear_screen;

    
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
    put("                    JUGADOR VS IA                      ");
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
    Put("             1. Empieza Jugador                        ");
    e_columna;
    new_line;

    e_borde;
    e_columna;
    put("                                                       ");
    e_columna;
    new_line;

    e_borde;
    e_columna;
    Put("             2. Empieza IA                             ");
    e_columna;
    new_line;

    e_borde;
    e_columna;
    put("                                                       ");
    e_columna;
    new_line;

    e_borde;
    e_columna;
    Put("             3. Atras                                  ");
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

end escribir_menu_ia;


with Nt_Console;use nt_console;
with Ada.Text_Io;use  Ada.Text_Io;

procedure escribir_ganador(jugador: in Integer) is
    fondo: color_type;

    procedure e_borde is begin
        set_background;
        Put("  ");
    end e_borde;

    procedure e_linea(color: in color_type) is begin
        e_borde;
        set_background(color);
        Put("                                                                           ");
        set_background;
        e_borde;
    end e_linea;

    procedure e_columna(color: in color_type) is begin
        set_background(color);
        put("   ");
        set_background;
    end e_columna;

    procedure e_linea_vacia(color: in color_type) is begin
        e_borde;
        e_columna(color);
        set_background;
        Put("                                                                     ");
        e_columna(color);
    end e_linea_vacia;

begin
    if jugador = 1 then
        fondo := red;
    elsif jugador=2 then
        fondo := yellow;
    else 
        fondo := magenta;
    end if;
    
    new_line;
    new_line;

    e_linea(fondo);
    new_line;

    e_linea_vacia(fondo);
    new_line;

    e_borde;
    e_columna(fondo);
    if jugador= 0 then
        Put("                             Empate                                  ");
    else 
        Put("                    El ganador es el jugador "& jugador'image &"                      ");

    end if;
    e_columna(fondo);
    new_line;

    e_linea_vacia(fondo);
    new_line;

    e_linea(fondo);
    new_line;
    


end escribir_ganador;
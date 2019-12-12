with Nt_Console;use nt_console;
with Ada.Text_Io;use  Ada.Text_Io;

with tipos; use tipos;

procedure escribir_tabla(tabla: in tablero) is

    -- Procedimientos para escribir partes de la tabla
    procedure e_borde is begin
        set_background;
        Put("  ");
    end e_borde;

    procedure e_linea is begin
        e_borde;
        set_background(light_blue);
        Put("                                                                           ");
        set_background;
        e_borde;
    end e_linea;

    procedure e_celda(tipo: in color) is begin
        set_background(light_blue);
        put("   ");
        if tipo = Rojo then
            set_background(red);
        elsif tipo= Amarillo then
            set_background(yellow);
        else 
            set_background;
        end if;
        put("     ");
    end e_celda;

    procedure e_fin_celda is begin
        set_background(light_blue);
        put("   ");
        set_background;
    end e_fin_celda;

    procedure e_linea_columnas is begin
        e_borde;

        set_background(light_blue);
        put("   ");

        set_background;
        put(" ");
        for i in 1..Max_Columnas-1 loop
            put(i'image & "      ");
        end loop;
        put(Max_Columnas'image & "  ");

        set_background(light_blue);
        put("   ");

        set_background;
        e_borde;
    end e_linea_columnas;

    procedure e_linea_patas is begin
        set_background(light_blue);
        put("       ");
        set_background;
        Put("                                                                 ");
        set_background(light_blue);
        put("       ");
        set_background;

    end e_linea_patas;

begin
    new_line;
    new_line;
    for i in tabla'range loop
        e_linea;
        new_line;

        e_borde;
        for j in tabla'range (2) loop
            e_celda(tabla(i,j));
        end loop;
        e_fin_celda;
        e_borde;
        new_line;    

        e_borde;
        for j in tabla'range (2) loop
            e_celda(tabla(i,j));
        end loop;
        e_fin_celda;
        e_borde;
        new_line;
    end loop;
    
    e_linea;
    new_line;

    e_linea_columnas;
    new_line;

    e_linea_patas;
    new_line;
     
    
    
end escribir_tabla;


with tipos
    ,tipos_santa
    ,meter_ficha
    ,comprobar_ganador
    ,escribir_tabla
    ,cambiar_color
    ;

use tipos
    ,tipos_santa
    ;

with Ada.Text_Io;use  Ada.Text_Io;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure valor_por_jugada(copia :in tablero;primero:in color;puntos : out puntos_opcion;pro : in boolean) is 
    a: Boolean;
    opuesto,jugador: color;
    numero_de_jugadas: Integer := 5;
    i,j,k,l: Integer := 1;
    tabla: tablero;
    
    
begin
    puntos := (others => 0);
    jugador := primero;
    opuesto := primero;
    cambiar_color(opuesto);
    tabla := copia;

    for i in 1..Max_columnas loop
        meter_ficha(i,jugador,tabla,a);

        if a then
            for j in 1..Max_columnas loop
                meter_ficha(j,opuesto,tabla,a);

                if a then
                    if comprobar_ganador(tabla) = opuesto then
                        puntos(i) := puntos(i) - 99999;
                    end if;
                    
                    for k in 1..Max_columnas loop
                        meter_ficha(k,jugador,tabla,a);

                        if a then 
                            if comprobar_ganador(tabla) = jugador then
                                puntos(i) := puntos(i) + 10000;
                            end if;

                            for l in 1..Max_columnas loop
                                meter_ficha(l,opuesto,tabla,a);

                                if a then
                                    if comprobar_ganador(tabla) = opuesto then
                                        puntos(i) := puntos(i) - 999;

                                    end if;

                                    for m in 1..Max_columnas loop
                                        meter_ficha(m,jugador,tabla,a);

                                        if a then

                                            if comprobar_ganador(tabla) = jugador then
                                                puntos(i) := puntos(i) + 100;
                                            end if;

                                            -- @ Con esta opcion activa pasan a ser de 7^5 a 7^7 operaciones lo que aumenta considerablemente el tiempo
                                            if pro then
                                                for n in 1..Max_columnas loop
                                                    meter_ficha(n,opuesto,tabla,a);

                                                    if a then
                                                        if comprobar_ganador(tabla) = opuesto then
                                                            puntos(i) := puntos(i) -9;
                                                        end if;

                                                        for o in 1..Max_columnas loop
                                                            meter_ficha(o,jugador,tabla,a);

                                                            if a then
                                                                if comprobar_ganador(tabla) = jugador then
                                                                    puntos(i) := puntos(i) +1;
                                                                end if;

                                                                meter_ficha(o,Nada,tabla,a);
                                                            end if;

                                                        end loop;


                                                        meter_ficha(n,Nada,tabla,a);
                                                    end if;
                                                end loop;
                                            end if;


                                            meter_ficha(m,Nada,tabla,a);
                                        end if;
                                    end loop;


                                    meter_ficha(l,Nada,tabla,a);
                                end if;
                            end loop;


                            meter_ficha(k,Nada,tabla,a);
                        end if;
                    end loop;


                    meter_ficha(j,Nada,tabla,a);
                end if;
            end loop;


            meter_ficha(i,Nada,tabla,a);
        else 
            puntos(i) := -99999999;
        end if;
    end loop;  


    --new_line;
    --for i in puntos'range loop
    --    put("(" & i'image & ")" & puntos(i)'image & "     ");
    --end loop;
   
end valor_por_jugada;
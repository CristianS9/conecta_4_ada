with tipos
    ,tipos_santa
    ,meter_ficha
    ,comprobar_ganador
    ;

use tipos
    ,tipos_santa
    ;


procedure posible_ganador(original :in tablero; ganadores: out array_ganador) is
    tabla: tablero;
    a: Boolean;
    color_ganador: color;

begin
    ganadores := (others => nada);

    for i in ganadores'range loop
        tabla := original;

        meter_ficha(i,Rojo,tabla,a);
        ganadores(i) := comprobar_ganador(tabla);
    
        tabla := original;
        meter_ficha(i,Amarillo,tabla,a);
        
        color_ganador := comprobar_ganador(tabla);

        if color_ganador /= nada and ganadores(i) /= nada then
            ganadores(i) := ambos;
        elsif color_ganador /= nada then
            ganadores(i) := Amarillo;
        end if;
    end loop;

end posible_ganador;
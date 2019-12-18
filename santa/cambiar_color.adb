with tipos; use tipos;

procedure cambiar_color(actual: in out Color) is

begin
    if actual = rojo then
        actual := amarillo;
    else
        actual := rojo;
    end if;
end cambiar_color;
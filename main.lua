function _init()
    -- corre cuando se inicia el programa
    player = {
        x = 63,
        y = 63,
        fx = false,
        fy = false,
        sp = 2,
        inver = false
    }
end

function _update()
    -- corre antes de cada frame para actualizar valores

    if btn(➡️) then
        -- listener del ➡️
        logging("right button")
        -- shift + r = ➡️
        player.inver = false
        player.x += 1
    end

    if btn(⬅️) then
        -- listener del ⬅️
        logging("left button")
        -- shift + l = ⬅️
        player.inver = true
        player.x -= 1
    end

    if btn(❎) then
        breakpoint()
    end

end

function _draw()
    -- corre al renderizar un frame
    cls(3)
    -- borra el fondo
    -- spr(1,position,63) -- dibuja el sprite 1 en x=99, y=99
    spr(player.sp, player.x, player.y, 2, 2, player.inver)
end
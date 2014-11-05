local class     = require 'lib.middleclass'
local bump      = require 'lib.bump'
local camera    = require 'camera'

local Player    = require 'DummyPlayer' 

function love.load()

    love.window.setMode(800, 600, {resizable=true, vsync=false, minwidth=400, minheight=300})

    player = Player:new()

end

function love.update( dt )

    player:move( dt )

end

function love.draw()

    camera.lookAt( player.x, player.y )

    camera.draw(function(x, y, w, h)
        -- All the drawing that should be drawn with the moving camera:

        player:draw()
    end
    )

    -- All drawing that should be fixed on screen:

    love.graphics.print(string.format('x: %f, y: %f', player.x, player.y), 10, 10)

end

function love.keypressed( key, isrepeat )
    if key == 'escape' then love.event.quit() end
end

function love.resize( width, height )
    
end

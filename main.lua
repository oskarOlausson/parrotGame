local class     = require 'lib.middleclass'
local bump      = require 'lib.bump'
local gamera    = require 'lib.gamera'

local Player    = require 'Player'


function love.load()

    player = Player:new()

end

function love.update( dt )

    player:update( dt )

end

function love.draw()

    player:draw()

end

function love.keypressed(key, isrepeat)

end


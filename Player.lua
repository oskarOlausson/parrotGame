local class = require 'lib.middleclass'


local Player = class('Player')

function Player:initialize()
    self.x = 0
    self.y = 0
end

function Player:draw()
    love.graphics.rectangle( 'fill', self.x, -self.y, 20, 40 )
end

function Player:update( dt )
    if love.keyboard.isDown('right') then
        self.x = self.x + 10
    elseif love.keyboard.isDown('left') then
        self.x = self.x - 10
    end

    if love.keyboard.isDown('up') then
        self.y = self.y + 10
    elseif love.keyboard.isDown('down') then
        self.y = self.y - 10
    end
end



return Player
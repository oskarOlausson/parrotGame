-- Dummy Player Class until we create the real one

local class = require 'lib.middleclass'

local isDown = love.keyboard.isDown


local Player = class('Player')

function Player:initialize()
    self.x = 100
    self.y = 100
    self.width = 50
    self.height = 50
    self.speed = 400
end



function Player:move( dt )
  local dx = isDown('left') and -1 or (isDown('right') and 1 or 0)
  local dy = isDown('up') and -1 or (isDown('down') and 1 or 0)
  self.x = self.x + dx * dt * self.speed
  self.y = self.y + dy * dt * self.speed
end

function Player:draw()
  love.graphics.rectangle('line',
                          self.x - self.width / 2,
                          self.y - self.height / 2,
                          self.width,
                          self.height)
end

return Player
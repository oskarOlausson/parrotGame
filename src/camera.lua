-- The window for the game
local viewport = {
    x = 0,
    y = 0,
    w = love.graphics.getWidth(),
    h = love.graphics.getHeight()
}

-- Boundaries for the world
local boundary = {
    x = 0,
    y = 0,
    w = 1000,--viewport.width,
    h = 1000--viewport.height
}

local function boundNumber(v, min, max)
  if max < min then return 0 end -- this happens when viewport is bigger than boundary
  return v < min and min or (v > max and max or v)
end

local function boundCamera()
  viewport.x = boundNumber(viewport.x, boundary.x, boundary.x + boundary.w - viewport.w)
  viewport.y = boundNumber(viewport.y, boundary.y, boundary.y + boundary.h - viewport.h)
end



local function setViewport(x, y, w, h)
    viewport.x, viewport.y, viewport.w, viewport.h = x, y, w or viewport.w, h or viewport.h
    boundCamera()
end

local function getViewport()
    return viewport.x, viewport.y, viewport.w, viewport.h
end

local function setBoundary(x, y, w, h)
    boundary.x, boundary.y, boundary.w, boundary.h = x, y, w, h
    boundCamera()
end

local function lookAt(x,y)
    setViewport(math.floor(x - viewport.w / 2), math.floor(y - viewport.h / 2))
end

local function draw(func)
    -- func should include all objects that should be
    -- drawn with the scrolling/moving camera

    love.graphics.push()
    love.graphics.translate(-viewport.x, -viewport.y)
    func(getViewport())
    love.graphics.pop()
end

return {
    setViewport = setViewport,
    setBoundary = setBoundary,
    getViewport = getViewport,
    lookAt      = lookAt,
    draw        = draw
}
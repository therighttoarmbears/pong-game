Gamestate = require "gamestate"
suit = require "suit"

local menu = {}
local game = {}

function menu:draw()
    suit.draw()
end

function menu:update()
  suit.layout:reset(100, 100)
  suit.layout:padding(10, 10)
  if suit.Button("Click to Game!", suit.layout:row(300,30)).hit then
    Gamestate.switch(game)
  end
  suit.Button("sideways!", suit.layout:col())
  suit.Button("Options", suit.layout:row())
end

function menu:keyreleased(key, code)
  -- remains for learning purposes
    if key == 'return' then
        Gamestate.switch(game)
    end
end

function game:draw()
  love.graphics.rectangle('fill', 200, 200, 200, 200)
end


function love.load()
  Gamestate.registerEvents()
  Gamestate.switch(menu)
end

function love.update(dt)

end

function love.draw(dt)

end

Flyier = require'characters.Flyier'

function love.load()
    player = Flyier:new()
    bg = love.graphics.newImage('assets/bg.jpg') 
    bgx1 = 0
    bgx2 = 800
end

function love.draw()
    love.graphics.setBackgroundColor(175, 175, 255)
    love.graphics.draw(bg,bgx1,0,0)
    love.graphics.draw(bg,bgx2,0,0)
    player:draw()
end

function love.update()
    bgx1 = bgx1 - 1
    bgx2 = bgx2 - 1
    player:update()
end
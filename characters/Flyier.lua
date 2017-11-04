local class = require'libs.middleclass' 

local Flyier = class'Flyier'

function Flyier:initialize() 
    self.char_x = 50
    self.char_y = love.graphics.getHeight() / 2    
    self.flyier_img = love.graphics.newImage("assets/flyier.png")
end

function Flyier:update()
    if love.keyboard.isDown('up') then
        self.char_y = self.char_y - 10
    end

    if love.keyboard.isDown('down') then
        self.char_y = self.char_y + 10
    end

    if love.keyboard.isDown('left') then
        self.char_x = self.char_x - 10
    end

    if love.keyboard.isDown('right') then
        self.char_x = self.char_x + 10
    end
end

function Flyier:draw()
    love.graphics.draw(self.flyier_img, self.char_x, self.char_y)
end

return Flyier
local class = require'libs.middleclass' 
local BG = class'Background'

function BG:initialize(filename)
    self.bg = love.graphics.newImage(filename) 
    
    self.bgX[1] = 0
    self.bgX[2] = love.graphics.getWidth()

    -- Used to throw the BG to front to make an infinite background --
    -- Warning: The background image should have an pixel perfect horizontal loop --
    self.bgXReset = self.bgX2
end

function BG:update()
    if self.bgX[1] < 0 then
        self.bgX[1] = self.bgXReset
    end

    if self.bgX2 < 0 then
        self.bgX2 = self.bgXReset
    end

    self.bgX1 = self.bgX1 - 1
    self.bgX2 = self.bgX2 - 1
end

function BG:draw()
    love.graphics.setBackgroundColor(255, 175, 175)
    
    love.graphics.draw(self.bg, self.bgX1, 0, 0)
    love.graphics.draw(self.bg, self.bgX2, 0, 0)
end

return BG
-- Source/Camera.lua
Camera = {}
Camera.x = 0
Camera.y = 0
Camera.scale = 1
Camera.minZoom = 0.05
Camera.maxZoom = 4

local lastTouch1 = nil
local lastTouch2 = nil
local lastDistance = nil

function Camera:apply()
    love.graphics.push()
    love.graphics.scale(self.scale)
    love.graphics.translate(-self.x, -self.y)
end

function Camera:clear()
    love.graphics.pop()
end

function Camera:updateTouch()
    local m = love.touch.getTouches()
    local count = #m

    if count == 1 then
        local id = m[1]
        local x, y = love.touch.getPosition(id)

        if lastTouch1 then
            local dx = (lastTouch1.x - x) / self.scale
            local dy = (lastTouch1.y - y) / self.scale
            self.x = self.x + dx
            self.y = self.y + dy
        end

        lastTouch1 = {x = x, y = y}
        lastTouch2 = nil
        lastDistance = nil

    elseif count == 2 then
        local id1, id2 = m[1], m[2]
        local x1, y1 = love.touch.getPosition(id1)
        local x2, y2 = love.touch.getPosition(id2)

        local dx = x2 - x1
        local dy = y2 - y1
        local dist = math.sqrt(dx * dx + dy * dy)

        if lastDistance then
            local diff = dist - lastDistance
            self.scale = self.scale + diff * 0.005
            if self.scale < self.minZoom then self.scale = self.minZoom end
            if self.scale > self.maxZoom then self.scale = self.maxZoom end
        end

        lastTouch1 = {x = x1, y = y1}
        lastTouch2 = {x = x2, y = y2}
        lastDistance = dist

    else
        lastTouch1 = nil
        lastTouch2 = nil
        lastDistance = nil
    end
end

return Camera
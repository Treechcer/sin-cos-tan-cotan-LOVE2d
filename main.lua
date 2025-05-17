_G.love = require("love")

function love.load()
    pos = {
        x = 0,
        y = 0
    }
end

function love.update(dt)
    pos.x = pos.x + dt
end

function love.draw()
    love.graphics.print(pos.x, 100, 100)

    love.graphics.setPointSize(5);
    for position = 1, 200, 0.5 do
        love.graphics.setColor(1,0,0)
        x = 5 * position
        y = math.tan(pos.x + position * 0.1) * 50 + 250
        love.graphics.points(x,y);

        love.graphics.setColor(1,1,0)
        y = 1 / math.tan(pos.x + position * 0.1) * 50 + 250
        love.graphics.points(x,y);

        love.graphics.setColor(0,1,0)
        y = math.sin(pos.x + position * 0.1) * 50 + 250
        love.graphics.points(x,y);

        love.graphics.setColor(0,0,1)
        y = math.cos(pos.x + position * 0.1) * 50 + 250
        love.graphics.points(x,y);
    end
end
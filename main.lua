menu = require("menu")
current_state = nil
maininterface = {
    EvilFont = nil,
}
function love.load()
    maininterface.EvilFont = love.graphics.newFont("EvilAssets/PAPYRUS.TTF")
    maininterface.switchState = switchState
    switchState(menu)
end
function love.draw()
    current_state:draw()
end
function switchState(newstate)
    current_state = newstate
    current_state:init(maininterface)
end
function love.mousepressed(x, y)
    current_state:mousepressed(x, y)
end
function love.update()
    current_state:update()
end
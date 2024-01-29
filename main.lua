menu = require("menu")
current_state = nil
maininterface = {
    switchState = switchState,
    EvilFont = nil
}
function love.load()
    maininterface.EvilFont = love.graphics.newFont("EvilAssets/PAPYRUS.TTF")
    switchState(menu)
end
function love.draw()
    current_state.draw()
end
function switchState(newstate)
    current_state = newstate
    current_state.init(maininterface)
end
function love.mousepressed(x, y, button, istouch, presses)
    current_state.mousepressed(x, y, button, istouch, presses)
end
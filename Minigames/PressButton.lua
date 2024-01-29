game = {}

function game.init(maininterface)
    game.maininterface = maininterface
    game.objective = false
    game.PressText = love.graphics.newText(maininterface.EvilFont,"Press")
end

function game.mousepressed(x,y,button,istouch,presses)
    game.objective = true
end

function game.draw()
    love.graphics.draw(game.PressText,100,100)
end

return game
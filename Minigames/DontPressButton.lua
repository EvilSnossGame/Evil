game = {}

function game.init(game,gameinterface)
    game.gameinterface = gameinterface
    game.objective = true
    game.PressText = love.graphics.newText(gameinterface.EvilFont,"Evil Hamborgoise")
end

function game.mousepressed(game,x,y,button,istouch,presses)
    game.objective = false
end

function game.draw(game)
    love.graphics.setColor(255,255,255,1)
    love.graphics.draw(game.PressText,100,100)
end

return game
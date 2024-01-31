game = {}

function game.init(game,gameinterface)
    game.gameinterface = gameinterface
    game.objective = false
    game.presses = 0
    game.PressText = love.graphics.newText(gameinterface.EvilFont,"Ultra rare")
    game.Texts = {"Rare","Medium rare","CONGRATULATIONS"}
end

function game.mousepressed(game,x,y,button,istouch,presses)
    game.presses = game.presses + 1
    game.PressText = love.graphics.newText(game.gameinterface.EvilFont,game.Texts[game.presses])
    if game.presses >= 3 then
        game.objective = false
        game.presses = 2 -- so we dont go over 3 in the next press
    elseif game.presses == 2 then
        game.objective = true -- PERFECTION is ACHIEVED
    end
end

function game.draw(game)
    love.graphics.setColor(255,255,255,1)
    love.graphics.draw(game.PressText,100,100)
end

return game
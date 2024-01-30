game = {

}
function game.init(game,maininterface)
    game.currentgame = nil
    game.gameinterface = {
        EvilFont = maininterface.EvilFont,
    }
    game.maininterface = maininterface
end
function game.switchGame(game,newgame)
    game.currentgame = newgame
    game.currentgame:init(game.gameinterface)
    game.StartTime = love.timer.getTime()
end
function game.draw(game)
    game.currentgame:draw()
    love.graphics.setColor( 0, 255, 0, 1)
    love.graphics.rectangle("fill", 0, love.graphics.getHeight()-20, love.graphics.getWidth()*(game.StartTime+3-love.timer.getTime())/3, 20)
end
function game.mousepressed(game,x, y)
    game.currentgame:mousepressed(x, y)
end
function game.update(game)
    if game.StartTime+3<love.timer.getTime() then
        if game.currentgame.objective then
            game:switchGame(require("Minigames/PressButton"))
        else
            game.maininterface.switchState(require("menu"))
        end
    end
end
return game
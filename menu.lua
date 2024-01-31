
menu = {

}
function menu.init(menu,maininterface)
    menu.maininterface = maininterface
    menu.EvilSnoss = love.graphics.newImage("EvilAssets/evilsnoss1.png")
    game = require("game")
    menu.Button = {
        X = 500,
        Y = 500,
        text = "Evil",
        onPress = function()
            menu.maininterface.switchState(game)
            game:switchGame(require("Minigames/SuperPressButton"))
        end
    }
    menu.EvilText = love.graphics.newText(maininterface.EvilFont, menu.Button.text)
end
function menu.draw(menu)
    width, height = love.graphics.getDimensions()
    love.graphics.setColor(255,255,255,1)
    love.graphics.draw(menu.EvilSnoss, width/2, height/2)
    love.graphics.draw(menu.EvilText, menu.Button.X, menu.Button.Y)
end
function menu.mousepressed(menu, x, y)
    if menu.Button.X<x and menu.Button.Y<y and menu.Button.X+menu.EvilText:getWidth()>x and menu.Button.Y+menu.EvilText:getHeight()>y then
        menu.Button.onPress()
    end
end
function menu.update(menu)

end
return menu
menu = {

}
function menu.init(maininterface)
    menu.maininterface = maininterface
    menu.EvilSnoss = love.graphics.newImage("EvilAssets/evilsnoss1.png")
    menu.Button = {
        X = 500,
        Y = 500,
        text = "Evil",
        onPress = function()
            print("Big Mac")
            print("Quartah Poundah")
        end
    }
    menu.EvilFont = love.graphics.newFont("EvilAssets/PAPYRUS.TTF")
    menu.EvilText = love.graphics.newText(menu.EvilFont, menu.Button.text)
end
function menu.draw()
    width, height = love.graphics.getDimensions()
    love.graphics.draw(menu.EvilSnoss, width/2, height/2)
    love.graphics.draw(menu.EvilText, menu.Button.X, menu.Button.Y)
end
function menu.mousepressed(x, y, button, istouch, presses)
    if menu.Button.X<x and menu.Button.Y<y and menu.Button.X+menu.EvilText:getWidth()>x and menu.Button.Y+menu.EvilText:getHeight()>y then
        menu.Button.onPress()
    end
end
return menu
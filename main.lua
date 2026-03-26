function love.load()

    --Load Things
    load = require ('Source/Funções/Load')
    draw = require ('Source/Funções/Draw')
    update = require ('Source/Funções/Update')

    --Adm Recursos 
	ScreenScale = require ('Source/Dev Resources/Screen Scale')
    screenWidth, screenHeight = love.graphics.getDimensions()
	--Call Load
    Load_Main_Menu()
    

end

function love.update(dt)

    --Call Update
    Update_Function(dt)
    mousex = love.mouse.getX()
    mousey = love.mouse.getY()


end

function love.draw()

    
    

    --Call Draw
    Draw_Things()
    
    --Vertical_de_3()
    --Horizontal_de_3()
end
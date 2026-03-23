function Load_Config_Menu()

    Screen_Height = love.graphics.getHeight()
    Screen_Width = love.graphics.getWidth()
    Background_Menu = love.graphics.newImage("Assets/BGPlanet.png")
    
    Mark_on =  love.graphics.newImage("Assets/Config/CheckOn.png")
    Mark_off =  love.graphics.newImage("Assets/Config/CheckOff.png")
   
    Background_width = Background_Menu:getWidth()
    Background_height = Background_Menu:getHeight()
    --tocarMusica()
    Music_Volume = 0.5
    musica:setVolume(Music_Volume)
    Button_click:setVolume(Music_Volume)
    config_menu = 1 
    
    Multiplayer_Archive = require ("Source/Telas/NewGame/Funcoes_Inside/Multiplayer_Config")
    Multiplayer_Load()
    
    mensagem = false
    Config = {}
    Config.Select_Config = 'Audio'

    -- config.lua
    configuration = {
        fullscreen = true,  -- mesmo valor que no conf.lua
        resizable = false,
        title = "Rimworld"
    }

    return configuration

    


    
end







function Draw_Config_Options()

    
    if menu == 1 then

	    love.graphics.setColor(1,1,1)
	
	
        local scaleX = Screen_Width / Background_width
        local scaleY = Screen_Height / Background_height
        local scale = math.max(scaleX, scaleY) -- Usa a maior escala para evitar espaços vazios

    -- Calcula a posição para centralizar a imagem
        local x = (Screen_Width - Background_width * scale) / 2
        local y = (Screen_Height - Background_height * scale) / 2

    -- Desenha a imagem escalada e centralizada
        love.graphics.draw(Background_Menu, x, y, 0, scale, scale)
    
        GameLogoName_width = GameLogoName:getWidth()
        GameLogoName_height = GameLogoName:getHeight()
    
        --love.graphics.draw(GameLogoName, 400, 35, 0, 0.3,0.3)
        

        Close_Game_Call = false
        tempoFechar = 3
        contador = 0
        Pop_UpDown = false
    
        --Pop-Up Config
        love.graphics.setColor(21/255,24/255,29/255)
        love.graphics.rectangle("fill", 100, 50, 500, 230)
    
        love.graphics.setColor(61/255,69/255,76/255)
        love.graphics.rectangle("line", 100, 50, 500, 230)
    
    
        Botão_Padrão("Fechar",275,225,120,46)
        
        
        
        
        if Config.Select_Config == 'Audio' then
            Draw_Buttons_Audio()
            
        elseif Config.Select_Config == "Graphics" then
            Draw_Buttons_Graphics()
        elseif Config.Select_Config == "Geral" then
            Draw_Buttons_Geral()
        elseif Config.Select_Config == "Controls" then
        end

        Buttons_List()

    
    end


end



function Buttons_List()

    love.graphics.setColor(1, 1, 1)

     -- Defina a área retangular
        local areaX = 130
        local areaY = 60
        local areaLargura = 100
        local areaAltura = 50

        -- Defina o texto
        local texto = "Áudio"

        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = areaX + (areaLargura - textoLargura) / 2
        local textoY = areaY + (areaAltura - textoAltura) / 2
        love.graphics.print(texto, textoX, textoY)


        -- Centralizar o botão de música
        local buttonWidth = Music_Button:getWidth()
        local buttonHeight = Music_Button:getHeight()
        local x = 110 + (60 - buttonWidth) / 2
        local y = 60 + (60 - buttonHeight) / 2

        love.graphics.setColor(1, 1, 1)
        love.graphics.draw(Music_Button, x+10, y+10, 0, 0.5, 0.5)    
    
    


    --[[
    
    Normal - Interior
    R = 54
    G = 54
    B = 54
    
    Normal - Borda
    R = 76
    G = 77
    B = 79
    ]]

    
    -- Defina a área retangular
        local areaX = 130
        local areaY = 120
        local areaLargura = 100
        local areaAltura = 50

        -- Defina o texto
        local texto = "Gráficos"

        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = areaX + (areaLargura - textoLargura) / 2
        local textoY = areaY + (areaAltura - textoAltura) / 2
        love.graphics.setColor(1, 1, 1)
        love.graphics.print(texto, textoX, textoY)
        local buttonWidth = Graphics_Button:getWidth()
        local buttonHeight = Graphics_Button:getHeight()
        local x = 110 + (60 - buttonWidth) / 2
        local y = 120 + (60 - buttonHeight) / 2
    
        love.graphics.draw(Graphics_Button, x+10, y+10, 0, 0.5, 0.5)
    
    

    
        local areaX = 130
        local areaY = 180
        local areaLargura = 100
        local areaAltura = 50

        -- Defina o texto
        local texto = "Geral"

        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = areaX + (areaLargura - textoLargura) / 2
        local textoY = areaY + (areaAltura - textoAltura) / 2
        love.graphics.setColor(1, 1, 1)
        love.graphics.print(texto, textoX, textoY)
        local buttonWidth = Graphics_Button:getWidth()
        local buttonHeight = Graphics_Button:getHeight()
        local x = 110 + (60 - buttonWidth) / 2
        local y = 180 + (60 - buttonHeight) / 2
    
        love.graphics.draw(General_Button, x+10, y+10, 0, 0.5, 0.5)

    
end



function Audio_Draw()
    --[[
    Selecionado - Interior
    R = 82
    G = 70
    B = 54
    
    Selecionado - Exterior
    R = 150
    G = 131
    B = 98
    
    ]]
    
    
    local areaX = 130
    local areaY = 60
    local areaLargura = 100
    local areaAltura = 50

    -- Defina o texto
    local texto = "Áudio"

    -- Calcule a posição do texto para centralizá-lo dentro da área
    local textoLargura = love.graphics.getFont():getWidth(texto)
    local textoAltura = love.graphics.getFont():getHeight()
    local textoX = areaX + (areaLargura - textoLargura) / 2
    local textoY = areaY + (areaAltura - textoAltura) / 2


    love.graphics.setColor(1, 1, 1)

    
    --Text
    -- Cálculo da porcentagem do volume da música
    --Music_Volume = 0
    musicVolumePercent = math.floor((Music_Volume / 0.50) * 100)

    if musicVolumePercent > 100 then
         musicVolumePercent = 100 
    end

    if musicVolumePercent < 0 then 
        musicVolumePercent = 0 
    end

-- Exibir a porcentagem do volume da música
    love.graphics.setFont(b7)
    love.graphics.print("Volume Principal: ", 300, textoY)
    love.graphics.setColor(0.8, 0.8, 0.8)
    love.graphics.rectangle("fill", 420, textoY, 150, 3)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", 420, textoY-2.5, 7, 7)
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", 420, textoY-2.5, 7, 7)
    love.graphics.setColor(1, 1, 1)



    love.graphics.print("Volume do Jogo: ", 300, textoY+30)
    love.graphics.setColor(0.8, 0.8, 0.8)
    love.graphics.rectangle("fill", 420, textoY+30, 150, 3)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", 420, textoY+30-2.5, 7, 7)
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", 420, textoY+30-2.5, 7, 7)
    love.graphics.setColor(1, 1, 1)



    love.graphics.print("Volume da Música: ".. musicVolumePercent .."%", 300, textoY+60)
    love.graphics.setColor(0.8, 0.8, 0.8)
    love.graphics.rectangle("fill", 420, textoY+60, 150, 3)
    music_barraX = 420 + (musicVolumePercent / 100) * 150 - 3.5
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", music_barraX, textoY+60-2.5, 7, 7)
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", music_barraX, textoY+60-2.5, 7, 7)

    love.graphics.setColor(1, 1, 1)


    love.graphics.print("Volume Ambiente: ", 300, textoY+90)
    love.graphics.setColor(0.8, 0.8, 0.8)
    love.graphics.rectangle("fill", 420, textoY+90, 150, 3)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", 420, textoY+90-2.5, 7, 7)
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", 420, textoY+90-2.5, 7, 7)
    love.graphics.setColor(1, 1, 1)



--[[love.graphics.print("Volume da Interface: ", 300, textoY+80)
love.graphics.setColor(0.8, 0.8, 0.8)
love.graphics.rectangle("fill", 420, textoY+80, 150, 3)
love.graphics.setColor(1, 1, 1)
love.graphics.rectangle("fill", 420, textoY+80-2.5, 7, 7)
love.graphics.setColor(0, 0, 0)
love.graphics.rectangle("line", 420, textoY+80-2.5, 7, 7)
love.graphics.setColor(1, 1, 1)]]


    love.graphics.setFont(b4)


end






function Graphics_Draw()
    
    local areaX = 130
    local areaY = 60
    local areaLargura = 100
    local areaAltura = 50

        -- Defina o texto
    local texto = "Graphics"

        -- Calcule a posição do texto para centralizá-lo dentro da área
    local textoLargura = love.graphics.getFont():getWidth(texto)
    local textoAltura = love.graphics.getFont():getHeight()
    local textoX = areaX + (areaLargura - textoLargura) / 2
    local textoY = areaY + (areaAltura - textoAltura) / 2


    love.graphics.setFont(b7)
    love.graphics.setColor(0.8, 0.8, 0.8)
    love.graphics.print("Tela Cheia", 300, textoY)
    if configuration.fullscreen then
        love.graphics.draw(Mark_on, 300+150, textoY-5,0,0.3,0.3)

    else 
        love.graphics.draw(Mark_off, 300+150, textoY-5,0,0.3,0.3)
        
        
            
    end

    love.graphics.setFont(b4)
end


function Geral_Draw()
    local areaX = 130
    local areaY = 60
    local areaLargura = 100
    local areaAltura = 50

        -- Defina o texto
    local texto = "Geral"

        -- Calcule a posição do texto para centralizá-lo dentro da área
    local textoLargura = love.graphics.getFont():getWidth(texto)
    local textoAltura = love.graphics.getFont():getHeight()
    local textoX = areaX + (areaLargura - textoLargura) / 2
    local textoY = areaY + (areaAltura - textoAltura) / 2
    
    
    
    love.graphics.setFont(b7)
    love.graphics.setColor(0.8, 0.8, 0.8)
    love.graphics.print("Multiplayer: ", 300, textoY)
    if Multiplayer_Status == "False" then
        love.graphics.draw(Mark_off, 300+150, textoY-5,0,0.3,0.3)
        love.graphics.setColor(1,0,0)
        love.graphics.setFont(b7)
        
        love.graphics.print(Multiplayer_Status, 300+55, textoY)
    elseif Multiplayer_Status == "True" then
        love.graphics.draw(Mark_on, 300+150, textoY-5,0,0.3,0.3)
        love.graphics.setColor(0,1,0)
        love.graphics.setFont(b7)
        
        love.graphics.print(Multiplayer_Status, 300+55, textoY)
        
        Host_or_Client = "Cliente"
        love.graphics.print(Host_or_Client, 300, textoY+40)
        
        love.graphics.setColor(0.8, 0.8, 0.8)
        love.graphics.print("IP: "..self_ip, 300, textoY+20)
        --love.graphics.print("Pointer IP: "..pointer_ip, 300+55, textoY+60)
        --love.graphics.print("Status: "..status_connection, 300+55, textoY+90)





        
    end
    love.graphics.setFont(b4)
    
end


function Draw_Buttons_Audio()
    

    Botão_PopUp_Selecionado(110, 60, 100, 50)
    Botão_PopUp_Normal(110, 120, 100, 50)
    Botão_PopUp_Normal(110, 180, 100, 50)
    
    --[[love.graphics.setColor(82/255,70/255,54/255)
    love.graphics.rectangle("fill", 110, 60, 100, 50)
    love.graphics.setColor(150/255,131/255,98/255)
    love.graphics.setLineWidth(2)
    love.graphics.rectangle("line", 110, 60, 100, 50)
    love.graphics.setLineWidth(1)]]
    Audio_Draw()
          


end

function Draw_Buttons_Multiplayer()

    Botão_PopUp_Normal(110, 60, 100, 50)
    Botão_PopUp_Normal(110, 120, 100, 50)
    Botão_PopUp_Normal(110, 180, 100, 50)
    Botão_PopUp_Selecionado(110, 140, 100, 50)

end

function Draw_Buttons_Graphics()


    Botão_PopUp_Normal(110, 60, 100, 50)
    Botão_PopUp_Selecionado(110, 120, 100, 50)
    Botão_PopUp_Normal(110, 180, 100, 50)
    Graphics_Draw()
end



function Draw_Buttons_Geral()


    Botão_PopUp_Normal(110, 60, 100, 50)
    Botão_PopUp_Normal(110, 120, 100, 50)
    Botão_PopUp_Selecionado(110, 180, 100, 50)
    
    Geral_Draw()
    --Graphics_Draw()
end
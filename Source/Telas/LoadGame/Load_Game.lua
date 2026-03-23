function Load_LG()
    --[[
    
    Path for loading
    /storage/emulated/0/Android/data/org.love2d.android/save
    
    
    ]]
    
    
    




end


function Draw_LG()
    --[[
    
    Pop_Up_Horizontal = (*Altura da tela) - 10px
    
    Pop_Up_Vertical = (*Largura da Tela) - 10px
    
    *Inversão de Variável
    
    ]]
    
    
    if Screen_Type == "Load_Game" then
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
        love.graphics.rectangle("fill", 180, 10, 351, 290)
    
        love.graphics.setColor(61/255,69/255,76/255)
        love.graphics.rectangle("line", 180, 10, 351, 290)
        
        
        
        
        --[[love.graphics.setColor(42/255,43/255,45/255)
        love.graphics.rectangle("fill", 180+50, 10+30, 351-100, 290-100)
        
        love.graphics.setColor(61/255,69/255,76/255)
        love.graphics.rectangle("line", 180+50, 10+30, 351-100, 290-100)
        
        33
        36
        41
        
        
        181
        187
        149
        
        
        love.graphics.setColor(33/255,36/255,41/255)
        love.graphics.rectangle("fill", 180+50, 10+30, 351-100, 40)]]
        
        
        love.graphics.setColor(181/255,187/255,149/255)
        love.graphics.print("Nenhum Save Game Encontrado!",180+55, 50)
        
        Botão_Padrão("Fechar",295,250,120,46)
        
        
    end
    

end
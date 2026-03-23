function Load_Main_Menu_Background()
    Screen_Height = love.graphics.getHeight()
    Screen_Width = love.graphics.getWidth()
    Background_Menu = love.graphics.newImage("Assets/BGPlanet.png")
    GameLogoName = love.graphics.newImage("Assets/Logo Name.png")
    
    Background_width = Background_Menu:getWidth()
    Background_height = Background_Menu:getHeight()
    
    --Tocar Música
    tocarMusica()
    Music_Volume = 0.50
    musica:setVolume(Music_Volume)
    --tocarButton_Click()
    --Button_click:setVolume(Music_Volume)
    --musica:setVolume(0.50)
  
    --Fechar Musica
    Close_Game_Call = false
    contador = 0
    tempoFechar = 0.01
    Pop_UpDown = false
    close = 0
    

end



function Start_Config_Menu()
    menu = 1
    --Load_Config_Menu()
end

function Start_Main_Menu()
    menu = 0
end


function Botão_Padrão(texto, x, y, w, h)
    -- Altura da borda
    local borda = 5

    -- Borda Superior Clara
    love.graphics.setColor(79/255, 61/255, 34/255)
    love.graphics.rectangle("fill", x, y, w, h)

    -- Borda Inferior Escura
    love.graphics.setColor(122/255, 94/255, 50/255)
    love.graphics.rectangle("fill", x + borda, y, w - borda, h - borda)


    --Elipse
    -- Triângulos decorativos (cantos superiores)
    love.graphics.setColor(122/255, 94/255, 50/255)
    local vt1 = {x, y + 1, x + 10, y + 1, x + 5, y + 5}
    love.graphics.polygon("fill", vt1)
    local vt2 = {x + w, y + h, x + w - 5, y + h - 5, x + w, y + h - 5}
    love.graphics.polygon("fill", vt2)

    -- Interior do Botão
    love.graphics.setColor(106/255, 81/255, 46/255)
    love.graphics.rectangle("fill", x + borda, y + borda, w - 2 * borda, h - 2 * borda)

    -- Borda / linha
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", x, y, w, h)

    -- Texto centralizado
    love.graphics.setColor(1, 1, 1) -- Branco
    local font = love.graphics.getFont()
    local textoLargura = font:getWidth(texto)
    local textoAltura = font:getHeight()
    local textoX = x + (w - textoLargura) / 2
    local textoY = y + (h - textoAltura) / 2
    love.graphics.print(texto, textoX, textoY)
end



function Botão_Alerta(texto, x, y, w, h)
    local borda = 5

    -- Borda Superior Clara
    love.graphics.setColor(78/255, 21/255, 12/255)
    --love.graphics.rectangle("fill", x + borda, y - borda, w - borda, h - borda)
    love.graphics.rectangle("fill", x, y, w, h)

    -- Borda Inferior Escura
    love.graphics.setColor(122/255, 25/255, 8/255)
    --love.graphics.rectangle("fill", x, y - borda, w, h)
    love.graphics.rectangle("fill", x + borda, y, w - borda, h - borda)
    
    -- Triângulos decorativos (cantos superiores)
    love.graphics.setColor(122/255, 25/255, 8/255)
    local vt1 = {x, y + 1, x + 10, y + 1, x + 5, y + 5}
    love.graphics.polygon("fill", vt1)
    local vt2 = {x + w, y + h, x + w - 5, y + h - 5, x + w, y + h - 5}
    love.graphics.polygon("fill", vt2)
    
    -- Interior do Botão
    love.graphics.setColor(107/255, 24/255, 16/255)
    --love.graphics.rectangle("fill", x + borda, y, w - 2 * borda, h - 2 * borda)
    love.graphics.rectangle("fill", x + borda, y + borda, w - 2 * borda, h - 2 * borda)

    -- Borda / linha
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", x, y, w, h)

    -- Texto centralizado
    love.graphics.setColor(193/255,70/255,73/255)
    local font = love.graphics.getFont()
    local textoLargura = font:getWidth(texto)
    local textoAltura = font:getHeight()
    local textoX = x + (w - textoLargura) / 2
    local textoY = y + (h - textoAltura) / 2
    love.graphics.print(texto, textoX, textoY)
    
    
end

function Botão_Confirmação(texto, x, y, w, h)
    local borda = 5

    -- Borda Inferior Escura
    love.graphics.setColor(46/255, 61/255, 18/255)
    love.graphics.rectangle("fill", x, y, w, h)

    -- Borda Superior Clara
    love.graphics.setColor(74/255, 96/255, 24/255)
    love.graphics.rectangle("fill", x + borda, y, w - borda, h - borda)

    -- Triângulos decorativos (cantos superiores)
    love.graphics.setColor(74/255, 96/255, 24/255)
    local vt1 = {x, y + 1, x + 10, y + 1, x + 5, y + 5}
    love.graphics.polygon("fill", vt1)
    local vt2 = {x + w, y + h, x + w - 5, y + h - 5, x + w, y + h - 5}
    love.graphics.polygon("fill", vt2)

    -- Interior do Botão
    love.graphics.setColor(58/255, 81/255, 25/255)
    love.graphics.rectangle("fill", x + borda, y + borda, w - 2 * borda, h - 2 * borda)
    
    -- Borda / linha
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", x, y, w, h)

    -- Texto centralizado
    love.graphics.setColor(148/255,208/255,134/255)
    local font = love.graphics.getFont()
    local textoLargura = font:getWidth(texto)
    local textoAltura = font:getHeight()
    local textoX = x + (w - textoLargura) / 2
    local textoY = y + (h - textoAltura) / 2
    love.graphics.print(texto, textoX, textoY)
    
    
    
    
    
end





function ClosegameNow()
    love.event.quit()
end


function Start_Main_Menu_Buttons()
    if menu == 0 then
        if Pop_UpDown then
        
            tempoRestante = tempoFechar - contador
            tempoRestanteFormatado = string.format("%.1f", tempoRestante)
            love.graphics.setColor(21/255,24/255,29/255)
            love.graphics.rectangle("fill", 237, 106.66, 237, 106.66)
            love.graphics.setColor(61/255,69/255,76/255)
            love.graphics.rectangle("line", 237, 106.66, 237, 106.66)
            love.graphics.setColor(255, 255,255)
            local texto = "Deseja realmente sair?"
            local font = love.graphics.getFont()
            local textoLargura = font:getWidth(texto)
            local textoAltura = font:getHeight()
            local textoX = 237 + (237 - textoLargura) / 2
            local textoY = 106.66 + (106.66 - textoAltura) / 2
            love.graphics.print(texto, textoX, textoY-35)
            
--Close Game
	        Botão_Alerta("Sair", 242, 159, 111, 46)
	        Botão_Confirmação("Voltar", 358, 159, 111, 46)
	        
            close = 1
            
            --474
        end
    osString = love.system.getOS( )
    if osString == "Android" then
        local function getAndroidVersion()
            local handle = io.popen("getprop ro.build.version.release") -- Comando Android
            if not handle then return "Não detectado" end
            local version = handle:read("*a"):gsub("%s+", "")
            handle:close()
            return version or "Erro"
            end
    else
    end

    love.graphics.setFont(b8)
    love.graphics.setColor(255, 255,255)
    --local state,percent,seconds = love.system.getPowerInfo()
    
    local dataHora = os.date("%d/%m/%Y \nHora: %H:%M:%S")
    local state, percent, seconds = love.system.getPowerInfo()

    if osString == "Android" then
        love.graphics.print(
    "Version: 0.0.232/(" .. love.system.getOS().." "..getAndroidVersion() ..
    ")\nCompiled: 13/06/2025" ..
    "\nData: " .. dataHora ..
    "\nBateria: " .. (percent and percent .. "% - " ..state or "Não disponível"),
    10, 10)
    else
        love.graphics.print(
    "Version: 0.0.232/(" .. love.system.getOS().." " ..
    ")\nCompiled: 13/06/2025" ..
    "\nData: " .. dataHora ..
    "\nBateria: " .. (percent and percent .. "% - " ..state or "Não disponível"),
    10, 10)
    end

    love.graphics.setFont(b4)
        
    
	--New Game
	Botão_Padrão("New Game", 495, 90, 170, 58)
	--Load Game
	Botão_Padrão("Load Game", 495, 155, 170, 58)
	--Opções
    Botão_Padrão("Options", 495, 220, 170, 58)
    
    
    
    
--Close Game
    Botão_Padrão("Close Game", 30, 230, 120, 46)
    
    end
    

        
    
end




function tocarMusica()
    musica = love.audio.newSource("Assets/Entry Screen.mp3", "stream")
    musica:setLooping(true)
    musica:play()
    volumeAtual = musica:getVolume()
    
end

function tocarButton_Click()
    Button_click = love.audio.newSource("Assets/Click_Button.mp3", "stream")
    Button_click:setLooping(false)
    interaction_volume = Button_click:getVolume()
    
end



function Start_Main_Menu_Background()
	if menu == 0 then
	
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
    
        love.graphics.draw(GameLogoName, 400, 35, 0, 0.3,0.3)
    end
end
    



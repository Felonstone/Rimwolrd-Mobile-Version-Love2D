--Puxa Load
function Load_Screen_Manager()
    Screen_Type = "Main_Menu"
    
    if Screen_Type == "Main_Menu" then
        Load_Main_Menu_Background()
        
    elseif Screen_Type == "Config_Menu" then
        Load_Main_Menu_Background()
        Load_Config_Menu()
        Start_Main_Menu_Background()
    
        
    elseif Screen_Type == "New_Game" then
    
    elseif Screen_Type == "Load_Game" then
        Load_LG()
    end


    touchCooldown = 0
    touchCooldownTime = 0.2 -- tempo em segundos
    touchHandled = false
    
end


--Puxa Draw
function Screen_Manager_ofc()
    if Screen_Type == "Main_Menu" then
        Start_Main_Menu_Background()  
        Start_Main_Menu_Buttons()
    elseif Screen_Type == "Config_Menu" then
        Draw_Config_Options()
    elseif Screen_Type == "Load_Game" then
        Draw_LG()
    end
    
    
    
    Touches_Funções()
    if menu == 10 then
        Start_gameplay()
    end
end







function Touches_Funções()

if #love.touch.getTouches() == 0 then
    touchHandled = false
end





if Pop_UpDown then

teste = "true"

elseif Pop_UpDown == false then

teste = "false"

end



--Pc Controllers

love.graphics.setFont(b1)
love.graphics.setColor(1,0,0)
love.graphics.print("Mouse X: "..mousex.."\nMouse Y:"..mousey.."\nScreen: "..Screen_Type.."\nMenu = "..menu.."\nCenario: "..Cenario.Select_Cenario.."\nClose: "..close, mousex+16,mousey)
love.graphics.setFont(b4)
--NewGame
if mousex >= 495 and mousex <= 666 then
    if mousey >= 90 and mousey <= 146 then
        Screen_Type = "New_Game"

        menu = 3

    end
end

--Config Menu
if mousex > 495 and mousex < 665 then
    if mousey > 215 and mousey < (215+59) and Screen_Type == "Main_Menu" then
        Start_Config_Menu()
        Screen_Type = "Config_Menu"

        close = 0

    end
end
if Screen_Type == "Config_Menu" then
    if mousex > 275 and mousex < (275+120) then
        if mousey > 225 and mousey < (225+46) then
            menu = 0
            Screen_Type = "Main_Menu"
            
            Start_Main_Menu()
        end
    end
end


--Close Game

if Screen_Type == "Main_Menu" and mousex >= 29 and mousex <= 149 and mousey >= 229 and mousey <= 275 then
    close = 1
    Pop_UpDown = true
end

if close == 1 and Screen_Type == "Main_Menu" then
    if mousex > 247 and mousex < 367 then
        if mousey > 164 and mousey < (164 + 46) then
            ClosegameNow()
        end
    end
    if mousex > 358 and mousex < 469 then
        if mousey > 164 and mousey < (164 + 46) then
            menu = 0
            Start_Main_Menu()
            close = 0
            Pop_UpDown = false
 
        end
    end
end
--Back Main Menu
if Screen_Type == "New_Game" and menu == 3 then
    if mousey > 250 and mousey < (250+46) then
        if mousex > 115 and mousex < (115+120) then
        
            Screen_Type = "Main_Menu"
            Start_Main_Menu()
        end
    end
end






-- Mobile Controllers
if not touchHandled then

    



m = love.touch.getTouches()
    for id = 1, #m do
    if touchCooldown <= 0 then
    -- PROCESSAR TOQUE NORMALMENTE

    -- após processar e mudar de tela ou realizar ação:
    
        Touch_px, Touch_py = love.touch.getPosition(m[id])
        
        love.graphics.setColor(0, 1, 0)
        
        
        --Futura Nota
        
        if Quantity_Pawns then
            love.graphics.print("X: "..Touch_px.."\nY: "..Touch_py.."\nScreen: "..Screen_Type.."\nMenu = "..menu.."\nCenario: "..Cenario.Select_Cenario.."\nColonos: "..Quantity_Pawns.."\nSexo: "..Pawn_Sex.."\nCabeça: "..Pawn_Cabeca.."\nCorpo: "..Pawn_Corpo.."\nCabelo: "..Pawn_Cabelo.."\nBarba: "..Pawn_Barba.."\nRoupa: "..Pawn_Roupa.."\nIdade: "..Pawn_Idade,Touch_px + 50,Touch_py)
            
    
            
            
            
        else
            love.graphics.print("X: "..Touch_px.."\nY: "..Touch_py.."\nScreen: "..Screen_Type.."\nMenu = "..menu.."\nCenario: "..Cenario.Select_Cenario.."\n",Touch_px + 50,Touch_py)
        end
        
        
        
        love.graphics.rectangle("line", Touch_px-8, Touch_py-8, 16, 16)
    
    
    
    
    
    
    
        if menu == 0 then
        
            if Touch_px > 25 and Touch_px < 145 then
                if Touch_py > 245 and Touch_py < (245+46) then
                    Pop_UpDown = true
                    Button_click:play()
                end
            end
            
            
            --NewGame
            if Touch_px > 495 and Touch_px < 665 then
                if Touch_py > 95 and Touch_py < (95+58) then
                    Screen_Type = "New_Game"
                    Button_click:play()
                    menu = 3
                    touchHandled = true
                    touchCooldown = touchCooldownTime
                end
            end
        
        
            --Load Game
            if Touch_px > 495 and Touch_px < 665 then
                if Touch_py > 155 and Touch_py < (155+59) then
                    menu = 2
                    Screen_Type = "Load_Game"
                    Button_click:play()
                    touchHandled = true
                    touchCooldown = touchCooldownTime
                end
            end
            
        
            --Config Menu
            if Touch_px > 495 and Touch_px < 665 then
                if Touch_py > 215 and Touch_py < (215+59) and Screen_Type == "Main_Menu" then
                    Start_Config_Menu()
                    Screen_Type = "Config_Menu"
                    Button_click:play()
                    close = 0
                    touchHandled = true
                    touchCooldown = touchCooldownTime
                end
            end
        
            
            
            if close == 1 and Screen_Type == "Main_Menu" then
                if Touch_px > 247 and Touch_px < 367 then
                    if Touch_py > 164 and Touch_py < (164 + 46) then
                        ClosegameNow()
                    end
                end
            
            
            
                if Touch_px > 358 and Touch_px < 469 then
                    if Touch_py > 164 and Touch_py < (164 + 46) then
                        menu = 0
                        Start_Main_Menu()
                        Button_click:play()
                        close = 0
                        Pop_UpDown = false
                        touchHandled = true
                        touchCooldown = touchCooldownTime
                    end
                end
            end
       
        
        elseif Screen_Type == "Config_Menu" then
            if Touch_px > 275 and Touch_px < (275+120) then
                if Touch_py > 225 and Touch_py < (225+46) then
                    menu = 0
                    Screen_Type = "Main_Menu"
                    Button_click:play()
                    Start_Main_Menu()
                    touchHandled = true
                    touchCooldown = touchCooldownTime
                end
            end
            
            
            
            if Touch_px > 410 and Touch_px < (429) then
                if Touch_py > 132 and Touch_py < 146 then
                   if Config.Select_Config == 'Audio' and Music_Volume >= 0 then
                        Music_Volume = Music_Volume - 0.02
                        if Music_Volume < 0 then
                            Music_Volume = 0
                        end
                        musica:setVolume(Music_Volume)
                        
                   end
                end
            elseif Touch_px > 560 and Touch_px < 578 then
                if Touch_py > 132 and Touch_py < 146 then
                   if Config.Select_Config == 'Audio' and Music_Volume < 0.5 then
                        Music_Volume = Music_Volume + 0.02
                        musica:setVolume(Music_Volume)
                        
                   end
                end
            end 
            
            
            
            if Touch_px > 450 and Touch_px < (450+25) then
                if Touch_py > 75 and Touch_py < (75 + 20) then
                

                
                    if Config.Select_Config == 'Graphics' then
                        configuration.fullscreen = not configuration.fullscreen
                        love.window.setFullscreen(configuration.fullscreen)
                        touchHandled = true
                        touchCooldown = touchCooldownTime
                    end
                    
                    
                    if Multiplayer_Status == "True" and Config.Select_Config == 'Geral' then
                        Multiplayer_Status = "False"
                        touchHandled = true
                        touchCooldown = touchCooldownTime
                    elseif Multiplayer_Status == "False" and Config.Select_Config == 'Geral' then
                        Multiplayer_Status = "True"
                        touchHandled = true
                        touchCooldown = touchCooldownTime
                    end
                end
            end
            
            
            
            
            if Touch_px > 110 and Touch_px < (110+100) then
                if Touch_py > 60 and Touch_py < (60+50) and Config.Select_Config ~= 'Audio' then
                    Config.Select_Config = 'Audio'
                    Button_click:play()
                elseif Touch_py > 120 and Touch_py < (120+50) and Config.Select_Config ~= "Graphics" then
                    Config.Select_Config = "Graphics"
                    Button_click:play()
                elseif Touch_py > 180 and Touch_py < (180+50) and Config.Select_Config ~= "Geral" then
                    Config.Select_Config = "Geral"
                    Button_click:play()
                end
            end
        end       
    end
    
    
    
    
        if Screen_Type == "Load_Game" and menu == 2 then
            if Touch_px > 295 and Touch_px < (295+120) then
                if Touch_py > 250 and Touch_py < (250+46) then
                    
                    Screen_Type = "Main_Menu"
                    Button_click:play()
                    Start_Main_Menu()
                    touchHandled = true
                    touchCooldown = touchCooldownTime
                end
            end
            
        elseif Screen_Type == "New_Game" and menu == 3 then
            if Touch_py > 250 and Touch_py < (250+46) then
                if Touch_px > 115 and Touch_px < (115+120) then
                
                    Screen_Type = "Main_Menu"
                    Start_Main_Menu()
                    Button_click:play()
                    touchHandled = true
                    touchCooldown = touchCooldownTime
                elseif Touch_px > 465 and Touch_px < (465+120) then
                    menu = 4
                    Button_click:play()
                    touchHandled = true
                    touchCooldown = touchCooldownTime
                    Randomizer_Pawns_Skins()
                end
            end
        
        
            if Touch_px > 110 and Touch_px < (110+200) then
                if Touch_py > 60 and Touch_py < (60+50) and Cenario.Select_Cenario ~= 'Pouso Forcado' then
        Cenario.Select_Cenario = 'Pouso Forcado'
                Button_click:play()
                elseif Touch_py > 120 and Touch_py < (120+50) and Cenario.Select_Cenario ~= 'Tribo Perdida' then
        Cenario.Select_Cenario = 'Tribo Perdida'
        Button_click:play()
                elseif Touch_py > 180 and Touch_py < (180+50) and Cenario.Select_Cenario ~= 'Explorador Rik' then
        Cenario.Select_Cenario = 'Explorador Rik'
        Button_click:play()
                end
            end
        
        
        
        
        
        
        elseif Screen_Type == "New_Game" and menu == 4 then
            if Touch_py > 250 and Touch_py < (250+46) then
                if Touch_px > 115 and Touch_px < (115+120) then
                    menu = 3
                    Button_click:play()
                    touchHandled = true
                    touchCooldown = touchCooldownTime
                elseif Touch_px > 465 and Touch_px < (465+80) then
                    menu = 10
                end
            elseif Touch_py > 60 and Touch_py < (60+35) then
                if Touch_px > 465 and Touch_px < (465+80) then
                    Randomizer_Pawns_Skins()
                    Button_click:play()
                    touchHandled = true
                    touchCooldown = touchCooldownTime
                end
            end
            
            
            
            
        end
    end
    
    end
end
function Load_NewGame_Creator()
    
    
    
    
    
    
    NewGame_Cenario = require ("Source/Telas/NewGame/1-Escolha_Cenario")
    Escolha_Cenario()
    
    
    NewGame_CreatePawns = require ("Source/Telas/NewGame/5-Escolha_Personagem")
    
    Load_Choice_Pawns()
    
    
    
    Gameplay = require("Source/Telas/Game_Play/GamePlay")
    load_gameplay()
    
    

    
    Map_01 = require("Source/Telas/Game_Play/Mapas/Celula(01-01)")
            
    Celula_01_01()
    if menu == 10 then
        --love.graphics.setBackgroundColor(25/255,25/255,25/255)
        
        
    end
    
    
    
    --Touches_Funções()
    
    
   --[[ if menu == 4 then
        Load_Choice_Pawns()
    
    end]]
    
    
end
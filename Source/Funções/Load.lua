--Função de Carregamento do Menu Principal
function Load_Main_Menu()
   
   --Carregar Toques
   Load_Touches()
   --Configuração de Menu
   archive_Camera = require("Source/Telas/Game_Play/Camera")
  --Config Images
   Music_Button = love.graphics.newImage("Assets/Config/OptionsAudio.png")
   Graphics_Button = love.graphics.newImage("Assets/Config/OptionsUI.png")
   General_Button = love.graphics.newImage("Assets/Config/OptionsGeneral.png")
   
   
   
   
   Config_Menu_Source = require ("Source/Telas/Config_Menu")
    Load_Menu_Source = require ("Source/Telas/LoadGame/Load_Game")
    
    
    
    New_Game_Loader = require ("Source/Telas/NewGame/Funcoes_Inside/Load_NewGame")
    New_Game_Drawer = require ("Source/Telas/NewGame/Funcoes_Inside/Draw_NewGame")
    New_Game_Updater = require ("Source/Telas/NewGame/Funcoes_Inside/Update(dt)_NewGame")
    
    Load_NewGame_Creator()
    
   
    
    
    
    
   --Checar Sistema Operacional
   osString = love.system.getOS()
    
   --Fontes
   b1 = love.graphics.newFont(15)
   b2 = love.graphics.newFont(14)
   b3 = love.graphics.newFont(13)
   b4 = love.graphics.newFont(12)
   b5 = love.graphics.newFont(11)
   b6 = love.graphics.newFont(10)
   b7 = love.graphics.newFont(9)
   b8 = love.graphics.newFont(8)
   b9 = love.graphics.newFont(7)
   b10 = love.graphics.newFont(6)
   b11 = love.graphics.newFont(5)
    
   --Menu Principal
   Menu = require ('Source/Telas/Main_Menu')
   
   --Carregamento de Gerenciador de Janela
   Screen_Manager = require ("Source/Telas/Screen_Manager")
   Load_Screen_Manager()
   
   
   
   --Music
   Music_Active = true
   --Music_Volume = 0.5
   Button_Volume = 0.5
   Game_Volume = 0.5
   
   menu = 0
   
   
   
   Load_Config_Menu()
   
   
   if menu == 1 then
    Load_Config_Menu()
    Draw_Config_Options()
   elseif menu == 2 then
    Load_LG()
    Draw_LG()
   elseif menu == 3 then
    
    --Load_NewGame_Create()
   end
   
   
   
   
   
   
end

function Load_Touches()
    
   --Carregamento de Toques
   LoadTouches = require ("Source/Draw_Touch_Screen")



end
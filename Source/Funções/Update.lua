--Função de Update
function Update_Function(dt)

    Updater_NewGame_Creator(dt)
    
    
    
    if touchCooldown > 0 then
        touchCooldown = touchCooldown - dt
    end
end
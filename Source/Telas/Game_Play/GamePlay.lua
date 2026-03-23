
function load_gameplay()
    Images_Import_Sprites = require ("Source/Telas/ImportSprites")
    
    Import_Images()
    Load_Pawn()
end

function Start_gameplay()
    Camera:updateTouch()
    if menu == 10 then
        Background_Game()
    end
end



function Background_Game()
    
    Camera:apply()
    
    Draw_Main_Grid()
    Draw_Pawn()
    love.graphics.setColor(1, 1, 1, 0.3)
    love.graphics.print("Célula de Pouso\n01-01", 10, 10)
    
    Camera:clear()
    
    
    
    
        -- UI fixa
    love.graphics.setColor(1, 1, 1)
    love.graphics.print("Zoom: " .. string.format("%.2f", Camera.scale), 10, 10)
    
    
end


function Main_Camera()

    --love.graphics.rectangle(

    local cameraX, cameraY = 0, 0
    local zoom = 4
    
    
    
end


function Draw_Main_Grid()

    --love.graphics.setBackgroundColor(25/255,25/255,25/255)
    
    love.graphics.setBackgroundColor(0,0,0)
    
    
    if not mapa0_1 then return end

    love.graphics.setColor(1, 1, 1, 0.3)
    for j = 1, mapHeight do
        for i = 1, mapWidth do
            local value = mapa0_1[j][i]

            -- desenha fundo se valor for 1
            if value == 1 then
                love.graphics.setColor(80/255, 47/255, 30/255)
                
                love.graphics.rectangle("fill", (i-1)*cellSize, (j-1)*cellSize, cellSize, cellSize)
                --love.graphics.setColor(1,1,1)
                --love.graphics.rectangle("line", (i-1)*cellSize, (j-1)*cellSize, cellSize, cellSize)
                
                love.graphics.setColor(1, 1, 1, 0.3)
            elseif value == 0 then
                love.graphics.setColor(0, 100/255, 0)
                love.graphics.rectangle("fill", (i-1)*cellSize, (j-1)*cellSize, cellSize, cellSize)
                --love.graphics.setColor(1,1,1)
                --love.graphics.rectangle("line", (i-1)*cellSize, (j-1)*cellSize, cellSize, cellSize)
                love.graphics.setColor(1, 1, 1, 0.3)
            elseif value == 2 then
                love.graphics.setColor(64/255, 64/255, 64/255)
                
                love.graphics.rectangle("fill", (i-1)*cellSize, (j-1)*cellSize, cellSize, cellSize)
                --love.graphics.setColor(1,1,1)
                --love.graphics.rectangle("line", (i-1)*cellSize, (j-1)*cellSize, cellSize, cellSize)
                love.graphics.setColor(1, 1, 1, 0.3)
                
            end

            --[[love.graphics.rectangle("line", (i-1)*cellSize, (j-1)*cellSize, cellSize, cellSize)

            love.graphics.setColor(1, 1, 1, 1)
            love.graphics.setFont(b10)
            love.graphics.print("X:"..(i-1).."\nY:"..(j-1).."\n"..value, (i-1)*cellSize+2, (j-1)*cellSize+2)
            love.graphics.setColor(1, 1, 1, 0.3)
            love.graphics.setFont(b4)]]
        end
    end



  --[[  love.graphics.setColor(1, 1, 1,0.3)
    for i = 0, 100 do
        for j = 0, 100 do
            love.graphics.rectangle("line", i * 32, j * 32, 32, 32)
            love.graphics.print("X: "..i.."\nY: "..j, i * 32, j * 32)
        end
    end
    ]]
    
    
    
    
    

end

function Load_Pawn()
    pawn = {}
    pawn.Name = "Pandora"
    pawn.Idade = 18
    
    pawn.Body_x = 168
    pawn.Body_y = 128
    
    pawn.Head_x = pawn.Body_x
    pawn.Head_y = (pawn.Body_y - 8)
    
    --pawn.Quantity = 1
    
end

function Draw_Pawn()
    love.graphics.setColor(242/255,227/255,203/255)
    love.graphics.draw(Corpo_Feminino, pawn.Body_x, pawn.Body_y, 0, 0.28, 0.28)
    love.graphics.draw(Female_Cabeca_05, pawn.Head_x, pawn.Head_y, 0, 0.28, 0.28)
    love.graphics.setColor(69/255,55/255,41/255)
    love.graphics.draw(Cabelo_Cute, pawn.Head_x, pawn.Head_y, 0, 0.28, 0.28)
    love.graphics.setColor(1,1,1)
    love.graphics.print(pawn.Name, pawn.Body_x, pawn.Body_y + 32)
 
 
end


function Moviments_Camera()


end
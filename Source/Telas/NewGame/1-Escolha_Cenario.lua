--Inicio de Run

function Draw_EC()


    if menu == 3 then
    
	
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
        
        
            --Choose Cenário
        love.graphics.setColor(21/255,24/255,29/255)
        love.graphics.rectangle("fill", 100, 10, 500, 298)
    
        love.graphics.setColor(135/255,135/255,135/255)
        love.graphics.rectangle("line", 100, 10, 500, 298)
        
        
        
       if Cenario.Select_Cenario == 'Pouso Forcado' then
    Start_Resources = {}
    Start_Resources.People = 3
    Start_Resources.Faction = "Recém-Chegados"
    
    Start_Resources.List_Itens = {

{'Prata','Refeição de Sobrevivência Embalada','Medicina','Componente','Madeira', 'Aço'}, 

{'x800','x50', 'x30', 'x30', 'x450'}

}
    
    
    
elseif Cenario.Select_Cenario == 'Tribo Perdida' then
    Start_Resources = {}
    Start_Resources.People = 5
    Start_Resources.Faction = "Nova Tribo"

    Start_Resources.List_Itens = {

    {'Prata','Carne-seca','Medicina natural','Madeira'}, 

    {'x200','x200', 'x20','x500'}

    }


elseif Cenario.Select_Cenario == 'Explorador Rik' then
    Start_Resources = {}
    Start_Resources.People = 1
    Start_Resources.Faction = "Recém-Chegado"

    Start_Resources.List_Itens = {

    {'Prata','Ouro', 'Refeição de Sobrevivência Embalada','Medicina do mundo brilhante','Componente'}, 

    {'x1000','x20', 'x20','x500'}

    }
    
    
    
    
    
    
end

        
        
            
            --[[Descrição do Cenário
    
            ]]
            
        love.graphics.setColor(54/255, 54/255, 54/255)
        love.graphics.rectangle("fill", 320, 60, 265, 175)
    
        love.graphics.setColor(97/255, 108/255, 122/255)
        love.graphics.rectangle("line", 320, 60, 265, 175)
        
        
        
        
        
        
        love.graphics.setColor(1,1,1)
        love.graphics.setFont(b2)
        love.graphics.print("Escolha o Cenário", 110,25)
        love.graphics.setFont(b4)
        
        
        if Cenario.Select_Cenario == 'Pouso Forcado' then
            Cenario_Pouso_Forcado()
            
        elseif Cenario.Select_Cenario == 'Tribo Perdida' then
            Cenario_Tribo_Perdida()
            
            
        elseif Cenario.Select_Cenario == 'Explorador Rik' then
            
            Cenario_O_Explorador_Rico()
        
        end
        
    
    
    
    
    
    


        Cenario_List()
        
        
        
        
        
         
        
        
        
        
        
        
        
        
        
        
        
    
        
        
        
        
        
        

        
        
        
        
        
        
        
        
        
        Botão_Padrão("Voltar", 110, 250, 120, 46)
        
                
        Botão_Padrão("Avançar", 465, 250, 120, 46)
        
    end


end




function Botão_PopUp_Selecionado(x, y, w, h)
    love.graphics.setColor(82/255,70/255,54/255)
    love.graphics.rectangle("fill", x, y, w, h)
    love.graphics.setColor(150/255,131/255,98/255)
    love.graphics.setLineWidth(2)
    love.graphics.rectangle("line", x, y, w, h)
    love.graphics.setLineWidth(1)
    
    
    
    
     
    
    
    



end






function Botão_PopUp_Normal(x, y, w, h)
    love.graphics.setColor(54/255, 54/255, 54/255)
    love.graphics.rectangle("fill", x, y, w, h)
    love.graphics.setColor(96/255, 96/255, 96/255)
    love.graphics.setLineWidth(2)
    love.graphics.rectangle("line", x, y, w, h)
    love.graphics.setLineWidth(1)



end



function Cenario_List()
-- Defina a área retangular
        local areaX = 110
        local areaY = 60
        local areaLargura = 200
        local areaAltura = 50
        love.graphics.setFont(b6)
        -- Defina o texto
        
        love.graphics.setColor(1,1,1)
        local texto = "Pouso Forçado"

        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = 115
        local textoY = areaY + ((areaAltura - textoAltura) / 3)-5
        love.graphics.print(texto, textoX, textoY)
        
        
        
        
        local areaX = 110
        local areaY = 60
        local areaLargura = 200
        local areaAltura = 50
        love.graphics.setFont(b8)
        -- Defina o texto
        
        love.graphics.setColor(195/255, 186/255, 181/255)
        local texto = "Três sobreviventes de um pouso forçado - a \nexperiência clássica de RimWolrd"

        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = 115
        local textoY = areaY + (((areaAltura - textoAltura) / 3)+((areaAltura - textoAltura) / 3))-5
        love.graphics.print(texto, textoX, textoY)
        
        
        love.graphics.setFont(b4)





    -- Defina a área retangular
        local areaX = 110
        local areaY = 120
        local areaLargura = 200
        local areaAltura = 50
        love.graphics.setFont(b6)
        -- Defina o texto
        
        love.graphics.setColor(1,1,1)
        local texto = "Tribo Perdida"

        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = 115
        local textoY = areaY + ((areaAltura - textoAltura) / 3)-5
        love.graphics.print(texto, textoX, textoY)
    
    
    
        
        local areaX = 110
        local areaY = 120
        local areaLargura = 200
        local areaAltura = 50
        love.graphics.setFont(b8)
        -- Defina o texto
        
        love.graphics.setColor(195/255, 186/255, 181/255)
        local texto = "Cinco nativos perdidos tentam se reerguer."

        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = 115
        local textoY = areaY + (((areaAltura - textoAltura) / 3)+((areaAltura - textoAltura) / 3))-5
        love.graphics.print(texto, textoX, textoY)
        
        
        love.graphics.setFont(b4)
        
        
        
        
        -- Defina a área retangular
        local areaX = 110
        local areaY = 180
        local areaLargura = 200
        local areaAltura = 50
        love.graphics.setFont(b6)
        -- Defina o texto
        
        love.graphics.setColor(1,1,1)
        local texto = "O Explorador Rico"

        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = 115
        local textoY = areaY + ((areaAltura - textoAltura) / 3)-5
        love.graphics.print(texto, textoX, textoY)
    
    
    
    
        local areaX = 110
        local areaY = 180
        local areaLargura = 200
        local areaAltura = 50
        love.graphics.setFont(b8)
        -- Defina o texto
        
        love.graphics.setColor(195/255, 186/255, 181/255)
        local texto = "Um rico explorador sai para experimentar o \nuniverso.\nDificuldade extra."

        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = 115
        local textoY = areaY + (((areaAltura - textoAltura) / 3)+((areaAltura - textoAltura) / 3))-5
        love.graphics.print(texto, textoX, textoY)
        
        
        love.graphics.setFont(b4)


end






function Cenario_Pouso_Forcado()

    Botão_PopUp_Selecionado(110, 60, 200, 50)
    Botão_PopUp_Normal(110, 120, 200, 50)
    Botão_PopUp_Normal(110, 180, 200, 50)
            
       
    
       
       
       
        
        
    
        
        
        
      --  320 60 265 175
        local areaX = 320
        local areaY = 60
        local areaLargura = 265
        local areaAltura = 175
        love.graphics.setFont(b3)
        -- Defina o texto
        
        love.graphics.setColor(1,1,1)
        local texto = "Pouso Forçado"

        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = 330
        local textoY = 70
        love.graphics.print(texto, textoX, textoY)
        
        
        
        
        
        
        local areaX = 320
        local areaY = 60
        local areaLargura = 265
        local areaAltura = 175
        love.graphics.setFont(b9)
        -- Defina o texto
        
        love.graphics.setColor(1,1,1)
        local texto = ("Três de vocês acordam em suas cápsulas de criptosono ao \nsom de sirenes e de metais se destroçando. Vocês mal \nconseguiram chegar às cápsulas de escape antes da nave \nser dilacerada. Algum tempo depois, vocês pousam neste \nmundo isolado e desconhecido.\n\n Sua facção será: "..Start_Resources.Faction..".\n Comece com "..Start_Resources.People.." pessoas.\n\n\nComece com: \n  -"..tostring(Start_Resources.List_Itens[1][1]).." "..tostring(Start_Resources.List_Itens[2][1]).."\n  -"..tostring(Start_Resources.List_Itens[1][2]).." "..tostring(Start_Resources.List_Itens[2][2]).."\n  -"..tostring(Start_Resources.List_Itens[1][3]).." "..tostring(Start_Resources.List_Itens[2][3]).."\n  -"..tostring(Start_Resources.List_Itens[1][4]).." "..tostring(Start_Resources.List_Itens[2][4]))
        
        
        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = 330
        local textoY = 90
        love.graphics.print(texto, textoX, textoY)
        
        love.graphics.setFont(b4)
        
    


end


function Cenario_Tribo_Perdida()

    Botão_PopUp_Normal(110, 60, 200, 50)
            Botão_PopUp_Selecionado(110, 120, 200, 50)
            Botão_PopUp_Normal(110, 180, 200, 50)
    --[[
    
    Tribo Perdida

Sua tribo foi destruida por grandes máquinas sanguinárias enviadas pelos deuses. Cinco de vocês conseguiram escapar. Agora, é hora de construir uma nova casa.

Nota: Já que você começará pobre e sua pesquisa será lenta, este será um cenário difícil.

]]





--  320 60 265 175
        local areaX = 320
        local areaY = 60
        local areaLargura = 265
        local areaAltura = 175
        love.graphics.setFont(b3)
        -- Defina o texto
        
        love.graphics.setColor(1,1,1)
        local texto = "Tribo Perdida"

        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = 330
        local textoY = 70
        love.graphics.print(texto, textoX, textoY)
        
        
        
        
        
        
        local areaX = 320
        local areaY = 60
        local areaLargura = 265
        local areaAltura = 175
        love.graphics.setFont(b9)
        -- Defina o texto
        
        love.graphics.setColor(1,1,1)
        local texto = ("Sua tribo foi destruida por grandes máquinas \nsanguinárias enviadas pelos deuses. Cinco de vocês \nconseguiram escapar. Agora, é hora de construir uma nova casa.\n\nNota: Já que você começará pobre e sua pesquisa será lenta, \neste será um cenário difícil.\n\n Sua facção será: "..Start_Resources.Faction..".\n Comece com "..Start_Resources.People.." pessoas.\n\n\nComece com: \n  -"..tostring(Start_Resources.List_Itens[1][1]).." "..tostring(Start_Resources.List_Itens[2][1]).."\n  -"..tostring(Start_Resources.List_Itens[1][2]).." "..tostring(Start_Resources.List_Itens[2][2]).."\n  -"..tostring(Start_Resources.List_Itens[1][3]).." "..tostring(Start_Resources.List_Itens[2][3]).."\n  -"..tostring(Start_Resources.List_Itens[1][4]).." "..tostring(Start_Resources.List_Itens[2][4]))
        
        
        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = 330
        local textoY = 90
        love.graphics.print(texto, textoX, textoY)
        
        love.graphics.setFont(b4)
        
    
    

end


function Cenario_O_Explorador_Rico()

    Botão_PopUp_Normal(110, 60, 200, 50)
    Botão_PopUp_Normal(110, 120, 200, 50)
    Botão_PopUp_Selecionado(110, 180, 200, 50)
    
    
    
    local areaX = 320
        local areaY = 60
        local areaLargura = 265
        local areaAltura = 175
        love.graphics.setFont(b3)
        -- Defina o texto
        
        love.graphics.setColor(1,1,1)
        local texto = "Rico Explorador"

        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = 330
        local textoY = 70
        love.graphics.print(texto, textoX, textoY)
        
        
        
        
        
        
        local areaX = 320
        local areaY = 60
        local areaLargura = 265
        local areaAltura = 175
        love.graphics.setFont(b9)
        -- Defina o texto
        
        love.graphics.setColor(1,1,1)
        local texto = ("As pessoas te chamam de louco por deixar sua casa no mundo brilhante, \nmas você sempre desejou explorar as estrelas — fora do neurossimulador. \nAgora, depois de décadas em crio‑sono, você está pousando neste \nrimworld desconhecido. Consequências reais te aguardam.\n\nAtenção: Este cenário não é equilibrado – é extremamente difícil, e você \npode morrer por qualquer motivo.\n\n Sua facção será: "..Start_Resources.Faction..".\n Comece com "..Start_Resources.People.." pessoa.\n\n\nComece com: \n  -"..tostring(Start_Resources.List_Itens[1][1]).." "..tostring(Start_Resources.List_Itens[2][1]).."\n  -"..tostring(Start_Resources.List_Itens[1][2]).." "..tostring(Start_Resources.List_Itens[2][2]).."\n  -"..tostring(Start_Resources.List_Itens[1][3]).." "..tostring(Start_Resources.List_Itens[2][3]).."\n  -"..tostring(Start_Resources.List_Itens[1][4]).." "..tostring(Start_Resources.List_Itens[2][4]))
        
        
        -- Calcule a posição do texto para centralizá-lo dentro da área
        local textoLargura = love.graphics.getFont():getWidth(texto)
        local textoAltura = love.graphics.getFont():getHeight()
        local textoX = 330
        local textoY = 90
        love.graphics.print(texto, textoX, textoY)
        
        love.graphics.setFont(b4)
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
end











function Escolha_Cenario()

--Criar uma Lista de Cenário

Cenario = {}
Cenario.Select_Cenario = 'Pouso Forcado'



Start_Resources = {}


    --[[Start_Resources.People = 3
    Start_Resources.Faction = "Recém-Chegados"
    
    Start_Resources.List_Itens = {

{'Prata','Refeição de Sobrevivência Embalada','Medicina','Componente','Madeira', 'Aço'}, 

{'x800','x50', 'x30', 'x30', 'x450'}

}
??


--[[

Imprimir 1 item da Tabela


local tabela = {
    { "Nome", "Idade", "Cidade" },
    { "João", 25, "São Paulo" },
    { "Maria", 30, "Rio de Janeiro" },
    { "Pedro", 35, "Brasília" }
}

love.graphics.print(tostring(tabela[1][2]), 100, 100)


Percorrer a tabela e imprimir todos os itens


local tabela = {
    { "Nome", "Idade", "Cidade" },
    { "João", 25, "São Paulo" },
    { "Maria", 30, "Rio de Janeiro" },
    { "Pedro", 35, "Brasília" }
}

local texto = ""
for i, linha in ipairs(tabela) do
    for j, coluna in ipairs(linha) do
        texto = texto .. tostring(coluna) .. "\t"
    end
    texto = texto .. "\n"
end

love.graphics.print(texto, 100, 100)



]]




--Lista de Recursos Iniciais







--Start_Resources.Item
--Start_Resources.
--Start_Resources.


--[[

    Cenários Futuros
    Tribo Perdida
    O Explorador Rico
    Brutalidade Nua

]]


end
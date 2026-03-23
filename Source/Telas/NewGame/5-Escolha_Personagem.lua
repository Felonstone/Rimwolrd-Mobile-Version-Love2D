    function Load_Choice_Pawns()
    
    
    Images_Import_Sprites = require ("Source/Telas/ImportSprites")
    
    Nomes_Pawns = require ("Source/Telas/NewGame/Assets/Pawn_Names")
    
    --Sprites
    
    
    Import_Images()
    
    math.randomseed(os.time())
    Aleatorize_Names_Last()
    
    --Variaveis de Controle
    Pawn_Sex = 0
    Pawn_Cabelo = ""
    Pawn_Barba = ""
    Pawn_Corpo = ""
    Pawn_Roupa = ""
    Pawn_Idade = 18
    Pawn_Cabeca = ""
    Pawn_Xenotipo = "Humano"
    Pawn_Xenotipo_Value = 1
    
    Tiro = 0
    Corpo_a_Corpo = 0
    Construcao = 0
    Mineracao = 0
    Cozinha = 0
    Cultivo = 0
    Animal = 0
    Fabricacao = 0
    Arte = 0
    Medicina = 0
    Social = 0
    Intelectual = 0
    
    
--[[if Pawn_Sex == 0 or Pawn_Sex == 1 or Pawn_Sex == 2 then
    Pawn_Sex = math.random(1, 2)
        if Pawn_Sex == 1 then
            Cabeça_Male_Aleatoria = math.random(1, 6)
            Corpo_Male_Aleatoria = math.random(1, 4)
            --corDePele = coresDePele[math.random(1, #coresDePele)]
            nomeAleatorio = Pawn_Male_Names[math.random(1, #Pawn_Male_Names)]
            Cabelo_Female_Aleatoria = math.random(1, 11)
            Cor_Cabelo_Aleatorio = math.random(1, 13)
        elseif Pawn_Sex == 2 then
            Cabeça_Female_Aleatoria = math.random(1, 6)
            Corpo_Female_Aleatoria = math.random(1, 4)
            
            nomeAleatorio = Pawn_Female_Names[math.random(1, #Pawn_Female_Names)]
            Cabelo_Female_Aleatoria = math.random(1, 6)
            Cor_Cabelo_Aleatorio = math.random(1, 13)
        end
end]]
    
    
    
    
    
    
    
    
    
    
    coresDePele = {
    {135/255, 87/255, 46/255},
    {229/255, 151/255, 86/255},
    {242/255, 227/255, 215/255},
	{255/255, 227/255, 203/255},
    {105/255, 67/255, 34/255},
    {255/255, 230/255, 204/255},
	{255/255, 229/255, 193/255},
    {56/255, 36/255, 18/255},
    {105/255, 67/255, 34/255},
	{249/255, 209/255, 158/255},
    {255/255, 231/255, 206/255},
    {242/255, 190/255, 134/255}
	
    }
    
    corDePele = coresDePele[math.random(1, #coresDePele)]
    Randomizer_Pawns_Skins()
    
    --[[ultimonomeAleatorio
    nomeAleatorio]]
    
    
    --Cabeça_Male_Aleatoria2 = math.random(1, 6)
    --Cabeça_Male_Aleatoria3 = math.random(1, 6)
    
    
    
    

    
    
    
    
    

end




function Randomizer_Pawns_Skins()
    --[[
    --------------------------------------
    HEAD
    BODY
    OBJECTS
    --------------------------------------
    ]]

    -- Habilidades básicas
    Tiro = math.random(0, 6)
    Corpo_a_Corpo = math.random(0, 6)
    Construcao = math.random(0, 6)
    Mineracao = math.random(0, 6)
    Cozinha = math.random(0, 6)
    Cultivo = math.random(0, 6)
    Animal = math.random(0, 6)
    Fabricacao = math.random(0, 6)
    Arte = math.random(0, 6)
    Medicina = math.random(0, 6)
    Social = math.random(0, 6)
    Intelectual = math.random(0, 6)

    -- Idade e sexo
    Pawn_Idade = math.random(7, 80)

    if Pawn_Idade >= 18 then
        if Pawn_Sex == 0 or Pawn_Sex == 1 or Pawn_Sex == 2 then
            Pawn_Sex = math.random(1, 2)

            if Pawn_Sex == 1 then
                -- Homem adulto
                Cabeça_Male_Aleatoria = math.random(1, 6)
                Corpo_Male_Aleatoria = math.random(1, 4)
                corDePele = coresDePele[math.random(1, #coresDePele)]
                nomeAleatorio = Pawn_Male_Names[math.random(1, #Pawn_Male_Names)]
                Cabelo_Male_Aleatoria = math.random(1, 32)
                Cor_Cabelo_Aleatorio = math.random(1, 20)
                Corpo_Kid_Aleatoria = 0
                --Pawn_Xenotipo_Value = math.random(1, 2)

                --[[
                    1- Humano
                    2- Archon
                    3- Yttakin
                    4- Gênio
                    5- Alto Companheiro
                    6- Baixo Companheiro
                    7- Hushardo
                    8- Hulan
                    9- Homem-Porco
                    10- Homem-Javali
                    11- Toxicadores
                    12- Cava-Terra
                    13- Neandertais
                    14- Impid
                    15- Sauridio
                    16- Homem-Lobo
                    17- Lycan
                    18- Inseto
                    19- Sanguofago
                    20- Bruxo
                    21- Strigoi
                    22- Ekkimian
                    23- Gaureliano
                    24- Animakin
                    25- Poluxkin
                    26- Morto
                    13- Starjack - não vai entrar
                ]]
            
            elseif Pawn_Sex == 2 then
                -- Mulher adulta
                Cabeça_Female_Aleatoria = math.random(1, 6)
                Corpo_Female_Aleatoria = math.random(1, 4)
                corDePele = coresDePele[math.random(1, #coresDePele)]
                nomeAleatorio = Pawn_Female_Names[math.random(1, #Pawn_Female_Names)]
                ultimo_nomeAleatorio = Pawn_Female_LastNames[math.random(1, #Pawn_Female_LastNames)]
                Cabelo_Female_Aleatoria = math.random(1, 12)
                Cor_Cabelo_Aleatorio = math.random(1, 20)
                Corpo_Kid_Aleatoria = 0
                --Pawn_Xenotipo_Value = math.random(1, 2)
            end
        end

    elseif Pawn_Idade < 18 then
        if Pawn_Sex == 0 or Pawn_Sex == 1 or Pawn_Sex == 2 then
            Pawn_Sex = math.random(1, 2)

            if Pawn_Sex == 1 then
                -- Menino
                Cabeça_Male_Aleatoria = math.random(1, 6)
                Corpo_Kid_Aleatoria = 1
                corDePele = coresDePele[math.random(1, #coresDePele)]
                nomeAleatorio = Pawn_Male_Names[math.random(1, #Pawn_Male_Names)]
                Cabelo_Male_Aleatoria = math.random(1, 32)
                Cor_Cabelo_Aleatorio = math.random(1, 20)
                --Pawn_Xenotipo_Value = math.random(1, 2)

            elseif Pawn_Sex == 2 then
                -- Menina
                Cabeça_Female_Aleatoria = math.random(1, 6)
                Corpo_Kid_Aleatoria = 1
                corDePele = coresDePele[math.random(1, #coresDePele)]
                nomeAleatorio = Pawn_Female_Names[math.random(1, #Pawn_Female_Names)]
                ultimo_nomeAleatorio = Pawn_Female_LastNames[math.random(1, #Pawn_Female_LastNames)]
                Cabelo_Female_Aleatoria = math.random(1, 12)
                Cor_Cabelo_Aleatorio = math.random(1, 20)
                --Pawn_Xenotipo_Value = math.random(1, 2)
            end
        end
    end
end


function Randomizer_Pawns_Habilities()

    
    
    --[[RANDOM VARIABLES RANGE
    
   -- 1 - 20
   
   fundo skill
   64 65 66
   
   fundo Good Skill
   83 96 71
   
   fundo Bad Skill
   95 64 71
   
   red letter 
   230 46 46
]]
    
    
    
    skills_x_Value = (225+45+20+70)
    
    love.graphics.setFont(b10)
    
    love.graphics.setColor(64/255,65/255,66/255)
    
    
    love.graphics.rectangle("fill", skills_x_Value-3, 115, Tiro, 10)
    
    
    love.graphics.rectangle("fill", skills_x_Value-3, 115+10, Corpo_a_Corpo, 10)
    

    love.graphics.rectangle("fill", skills_x_Value-3, 115+20, Construcao, 10)
    

    love.graphics.rectangle("fill", skills_x_Value-3, 115+30, Mineracao, 10)
    
    
    love.graphics.rectangle("fill", skills_x_Value-3, 115+40, Cozinha, 10)
    

    love.graphics.rectangle("fill", skills_x_Value-3, 115+50, Cultivo, 10)
    
    
    love.graphics.rectangle("fill", skills_x_Value-3, 115+60, Animal, 10)
    
    
    love.graphics.rectangle("fill", skills_x_Value-3, 115+70, Fabricacao, 10)
    
    
    love.graphics.rectangle("fill", skills_x_Value-3, 115+80, Arte, 10)
    
    
    love.graphics.rectangle("fill", skills_x_Value-3, 115+90, Medicina, 10)
    
    
    love.graphics.rectangle("fill", skills_x_Value-3, 115+100, Social, 10)
    
    
    love.graphics.rectangle("fill", skills_x_Value-3, 115+110, Intelectual, 10)
    
    
    
    
    skills_x = (225+45+20)
    love.graphics.setColor(1,1,1)
    love.graphics.setFont(b8)
    love.graphics.print("Tiro ",(skills_x),115)
    love.graphics.print("Corpo a Corpo ", (skills_x),115+10)
    love.graphics.print("Construção ", (skills_x),115+20)
    love.graphics.print("Mineração", (skills_x),115+30)
    love.graphics.print("Cozinha", (skills_x),115+40)
    love.graphics.print("Cultivo", (skills_x),115+50)
    love.graphics.print("Animal", (skills_x),115+60)
    love.graphics.print("Fabricação", (skills_x),115+70)
    love.graphics.print("Arte", (skills_x),115+80)
    love.graphics.print("Medicina", (skills_x),115+90)
    love.graphics.print("Social", (skills_x),115+100)
    love.graphics.print("Intelectual",(skills_x),115+110)
    
    
    
    love.graphics.setColor(1,1,1)
    love.graphics.setFont(b8)
    
    
    
    
    if Tiro == 0 then
        love.graphics.setColor(230/255,46/255,46/255)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print(Tiro,(skills_x_Value),115)
    
    
    
    
    if Corpo_a_Corpo == 0 then
        love.graphics.setColor(230/255,46/255,46/255)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print(Corpo_a_Corpo , (skills_x_Value),115+10)
    
    
    
    
    if Construcao == 0 then
        love.graphics.setColor(230/255,46/255,46/255)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print(Construcao , (skills_x_Value),115+20)
    
    
    
    
    if Mineracao == 0 then
        love.graphics.setColor(230/255,46/255,46/255)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print(Mineracao, (skills_x_Value),115+30)
    
    
    
    
    if Cozinha == 0 then
        love.graphics.setColor(230/255,46/255,46/255)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print(Cozinha, (skills_x_Value),115+40)
    
    
    
    if Cultivo == 0 then
        love.graphics.setColor(230/255,46/255,46/255)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print(Cultivo, (skills_x_Value),115+50)
    
    
    
    
    if Animal == 0 then
        love.graphics.setColor(230/255,46/255,46/255)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print(Animal, (skills_x_Value),115+60)
    
    
    
    
    if Fabricacao == 0 then
        love.graphics.setColor(230/255,46/255,46/255)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print(Fabricacao, (skills_x_Value),115+70)
    
    
    
    
    
    if Arte == 0 then
        love.graphics.setColor(230/255,46/255,46/255)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print(Arte, (skills_x_Value),115+80)
    
    
    if Medicina == 0 then
        love.graphics.setColor(230/255,46/255,46/255)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print(Medicina, (skills_x_Value),115+90)
    
    
    
    
    if Social == 0 then
        love.graphics.setColor(230/255,46/255,46/255)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print(Social, (skills_x_Value),115+100)
    
    
    
    
    if Intelectual == 0 then
        love.graphics.setColor(230/255,46/255,46/255)
    else
        love.graphics.setColor(1,1,1)
    end
    love.graphics.print(Intelectual,(skills_x_Value),115+110)
    
    
    love.graphics.setFont(b4)

end


    
function Draw_Mini_Blocks()
    -- Desenha os blocos
    for i = 1, Start_Resources.People do
        Botão_PopUp_Normal(115, 10 + (i * 55), 100, 50)
        Botão_PopUp_Selecionado(115, 10 + 55, 100, 50)

        -- Fundo dos blocos
        love.graphics.setColor(54 / 255, 54 / 255, 54 / 255)
        love.graphics.rectangle("fill", 220, 65, 220 + 20, 155 + 20)

        love.graphics.setColor(135 / 255, 135 / 255, 135 / 255)
        love.graphics.rectangle("line", 220, 65, 220 + 20, 155 + 20)

        -- Títulos
        love.graphics.setFont(b8)
        love.graphics.setColor(222 / 255, 222 / 255, 75 / 255)
        love.graphics.print("Traços", 225, 110)
        love.graphics.print("Saúde", 225 + 170, 110)
        love.graphics.print("Incapaz de", 225, 150)
        love.graphics.print("Relações", 225 + 170, 150)
        love.graphics.print("Itens", 225 + 170, 190)

        -- Fonte menor
        love.graphics.setFont(b4)

        -- Gera habilidades aleatórias
        Randomizer_Pawns_Habilities()

        -- Nome e cor da pele
        love.graphics.setColor(1, 1, 1, 0.8)
        love.graphics.setFont(b7)
        love.graphics.print(nomeAleatorio, 120, 15 + (55))
        love.graphics.setFont(b4)
        love.graphics.setColor(corDePele[1], corDePele[2], corDePele[3])

        -- Sexo masculino
        if Pawn_Sex == 1 then
            -- Corpo Masculino
            if Corpo_Male_Aleatoria == 1 and Corpo_Kid_Aleatoria == 0 then
                if Pawn_Xenotipo_Value == 1 then
                    love.graphics.draw(Corpo_Musculoso, 167, 13 + 60, 0, 0.28, 0.28)
                    love.graphics.setColor(166 / 255, 204 / 255, 217 / 255)
                    love.graphics.draw(Roupa_Basica_Musculoso, 167, 13 + 60, 0, 0.28, 0.28)

                    Pawn_Corpo = "Corpo_Musculoso"
                    Pawn_Roupa = "Roupa_Basica_Musculoso"
                    Pawn_Xenotipo = "Humano"

                elseif Pawn_Xenotipo_Value == 2 then
                    love.graphics.setColor(1, 1, 1)
                    love.graphics.draw(Corpo_Dissecado_Normal, 167, 13 + 60, 0, 0.28, 0.28)

                    Pawn_Corpo = "Corpo_Dissecado"
                    Pawn_Roupa = "Roupa_SemRoupa"
                    Pawn_Xenotipo = "Morto"
                end

            elseif Corpo_Male_Aleatoria == 2 and Corpo_Kid_Aleatoria == 0 then
                if Pawn_Xenotipo_Value == 1 then
                    Pawn_Corpo = "Corpo_Gordo"
                    love.graphics.draw(Corpo_Gordo, 167, 13 + 60, 0, 0.28, 0.28)
                    love.graphics.setColor(166 / 255, 204 / 255, 217 / 255)
                    love.graphics.draw(Roupa_Basica_Gordo, 167, 13 + 60, 0, 0.28, 0.28)

                    Pawn_Roupa = "Roupa_Basica_Gordo"
                    Pawn_Xenotipo = "Humano"

                elseif Pawn_Xenotipo_Value == 2 then
                    love.graphics.setColor(1, 1, 1)
                    love.graphics.draw(Corpo_Dissecado_Normal, 167, 13 + 60, 0, 0.28, 0.28)

                    Pawn_Corpo = "Corpo_Dissecado"
                    Pawn_Roupa = "Roupa_SemRoupa"
                    Pawn_Xenotipo = "Morto"
                end

            elseif Corpo_Male_Aleatoria == 3 and Corpo_Kid_Aleatoria == 0 then
                if Pawn_Xenotipo_Value == 1 then
                    Pawn_Corpo = "Corpo_Normal"
                    love.graphics.draw(Corpo_Normal, 167, 13 + 60, 0, 0.28, 0.28)
                    love.graphics.setColor(166 / 255, 204 / 255, 217 / 255)
                    love.graphics.draw(Roupa_Basica_Normal, 167, 13 + 60, 0, 0.28, 0.28)

                    Pawn_Roupa = "Roupa_Basica_Normal"
                    Pawn_Xenotipo = "Humano"

                elseif Pawn_Xenotipo_Value == 2 then
                    love.graphics.setColor(1, 1, 1)
                    love.graphics.draw(Corpo_Dissecado_Normal, 167, 13 + 60, 0, 0.28, 0.28)

                    Pawn_Corpo = "Corpo_Dissecado"
                    Pawn_Roupa = "Roupa_SemRoupa"
                    Pawn_Xenotipo = "Morto"
                end

            elseif Corpo_Male_Aleatoria == 4 and Corpo_Kid_Aleatoria == 0 then
                if Pawn_Xenotipo_Value == 1 then
                    Pawn_Corpo = "Corpo_Magro"
                    love.graphics.draw(Corpo_Magro, 167, 13 + 60, 0, 0.28, 0.28)
                    love.graphics.setColor(166 / 255, 204 / 255, 217 / 255)
                    love.graphics.draw(Roupa_Basica_Magro, 167, 13 + 60, 0, 0.28, 0.28)

                    Pawn_Roupa = "Roupa_Basica_Magro"
                    Pawn_Xenotipo = "Humano"

                elseif Pawn_Xenotipo_Value == 2 then
                    love.graphics.setColor(1, 1, 1)
                    love.graphics.draw(Corpo_Dissecado_Magro, 167, 13 + 60, 0, 0.28, 0.28)

                    Pawn_Corpo = "Corpo_Dissecado"
                    Pawn_Roupa = "Roupa_SemRoupa"
                    Pawn_Xenotipo = "Morto"
                end

            elseif Corpo_Kid_Aleatoria == 1 then
                if Pawn_Xenotipo_Value == 1 then
                    love.graphics.draw(Corpo_Infantil, 167, 13 + 60, 0, 0.28, 0.28)
                    love.graphics.setColor(166 / 255, 204 / 255, 217 / 255)
                    love.graphics.draw(Roupa_Basica_Infantil, 167, 13 + 60, 0, 0.28, 0.28)

                    Pawn_Corpo = "Corpo_Infantil"
                    Pawn_Roupa = "Roupa_Infantil"
                    Pawn_Xenotipo = "Humano"

                elseif Pawn_Xenotipo_Value == 2 then
                    love.graphics.setColor(1, 1, 1)
                    love.graphics.draw(Corpo_Dissecado_Infantil, 167, 13 + 60, 0, 0.28, 0.28)

                    Pawn_Corpo = "Corpo_Dissecado"
                    Pawn_Roupa = "Roupa_SemRoupa"
                    Pawn_Xenotipo = "Morto"
                end
            end
            
            
            
            
            
            
            
            
            --Peguei até aqui :D        
        
        
            love.graphics.setColor(corDePele[1], corDePele[2], corDePele[3])

            if Pawn_Xenotipo_Value == 1 then
                if Cabeça_Male_Aleatoria == 1 then
                    love.graphics.draw(Male_Cabeca_01, 167, 65, 0, 0.28, 0.28)
                    Pawn_Cabeca = "Cabeça_1"

                elseif Cabeça_Male_Aleatoria == 2 then
                    love.graphics.draw(Male_Cabeca_02, 167, 65, 0, 0.28, 0.28)
                    Pawn_Cabeca = "Cabeça_2"

                elseif Cabeça_Male_Aleatoria == 3 then
                    love.graphics.draw(Male_Cabeca_03, 167, 65, 0, 0.28, 0.28)
                    Pawn_Cabeca = "Cabeça_3"

                elseif Cabeça_Male_Aleatoria == 4 then
                    love.graphics.draw(Male_Cabeca_04, 167, 65, 0, 0.28, 0.28)
                    Pawn_Cabeca = "Cabeça_4"

                elseif Cabeça_Male_Aleatoria == 5 then
                    love.graphics.draw(Male_Cabeca_05, 167, 65, 0, 0.28, 0.28)
                    Pawn_Cabeca = "Cabeça_5"

                elseif Cabeça_Male_Aleatoria == 6 then
                    love.graphics.draw(Male_Cabeca_06, 167, 65, 0, 0.28, 0.28)
                    Pawn_Cabeca = "Cabeça_6"
                end

            elseif Pawn_Xenotipo_Value == 2 then
                love.graphics.setColor(1, 1, 1)
                love.graphics.draw(Caveira_Cabeca, 167, 65, 0, 0.28, 0.28)
                Pawn_Cabeca = "Caveira"
            end

        elseif Pawn_Sex == 2 then
    -- Corpo Female
            if Corpo_Female_Aleatoria == 1 and Corpo_Kid_Aleatoria == 0 then
                if Pawn_Xenotipo_Value == 1 then
                    love.graphics.draw(Corpo_Musculoso, 167, 73, 0, 0.28, 0.28)
                    love.graphics.setColor(166/255, 204/255, 217/255)
                    love.graphics.draw(Roupa_Basica_Musculoso, 167, 73, 0, 0.28, 0.28)

                    Pawn_Corpo = "Corpo_Musculoso"
                    Pawn_Roupa = "Roupa_Basica_Musculoso"
                    Pawn_Xenotipo = "Humano"

                elseif Pawn_Xenotipo_Value == 2 then
                    love.graphics.setColor(1, 1, 1)
                    love.graphics.draw(Corpo_Dissecado_Normal, 167, 73, 0, 0.28, 0.28)
                    Pawn_Corpo = "Corpo_Dissecado"
                    Pawn_Roupa = "Roupa_SemRoupa"
                    Pawn_Xenotipo = "Morto"
                end

            elseif Corpo_Female_Aleatoria == 2 and Corpo_Kid_Aleatoria == 0 then
                if Pawn_Xenotipo_Value == 1 then
                    love.graphics.draw(Corpo_Gordo, 167, 73, 0, 0.28, 0.28)
                    love.graphics.setColor(166/255, 204/255, 217/255)
                    love.graphics.draw(Roupa_Basica_Gordo, 167, 73, 0, 0.28, 0.28)

                    Pawn_Corpo = "Corpo_Gordo"
                    Pawn_Roupa = "Roupa_Basica_Gordo"
                    Pawn_Xenotipo = "Humano"

                elseif Pawn_Xenotipo_Value == 2 then
                    love.graphics.setColor(1, 1, 1)
                    love.graphics.draw(Corpo_Dissecado_Normal, 167, 73, 0, 0.28, 0.28)
                    Pawn_Corpo = "Corpo_Dissecado"
                    Pawn_Roupa = "Roupa_SemRoupa"
                    Pawn_Xenotipo = "Morto"
                end

            elseif Corpo_Female_Aleatoria == 3 and Corpo_Kid_Aleatoria == 0 then
                if Pawn_Xenotipo_Value == 1 then
                    love.graphics.draw(Corpo_Feminino, 167, 73, 0, 0.28, 0.28)
                    love.graphics.setColor(166/255, 204/255, 217/255)
                    love.graphics.draw(Roupa_Basica_Female, 167, 73, 0, 0.28, 0.28)

                    Pawn_Corpo = "Corpo_Feminino"
                    Pawn_Roupa = "Roupa_Basica_Female"
                    Pawn_Xenotipo = "Humano"

                elseif Pawn_Xenotipo_Value == 2 then
                    love.graphics.setColor(1, 1, 1)
                    love.graphics.draw(Corpo_Dissecado_Normal, 167, 73, 0, 0.28, 0.28)
                    Pawn_Corpo = "Corpo_Dissecado"
                    Pawn_Roupa = "Roupa_SemRoupa"
                    Pawn_Xenotipo = "Morto"
                end

            elseif Corpo_Female_Aleatoria == 4 and Corpo_Kid_Aleatoria == 0 then
                if Pawn_Xenotipo_Value == 1 then
                    love.graphics.draw(Corpo_Magro, 167, 73, 0, 0.28, 0.28)
                    love.graphics.setColor(166/255, 204/255, 217/255)
                    love.graphics.draw(Roupa_Basica_Magro, 167, 73, 0, 0.28, 0.28)

                    Pawn_Corpo = "Corpo_Magro"
                    Pawn_Roupa = "Roupa_Basica_Magro"
                    Pawn_Xenotipo = "Humano"

                elseif Pawn_Xenotipo_Value == 2 then
                    love.graphics.setColor(1, 1, 1)
                    love.graphics.draw(Corpo_Dissecado_Magro, 167, 73, 0, 0.28, 0.28)
                    Pawn_Corpo = "Corpo_Dissecado"
                    Pawn_Roupa = "Roupa_SemRoupa"
                    Pawn_Xenotipo = "Morto"
                end

            elseif Corpo_Kid_Aleatoria == 1 then
                if Pawn_Xenotipo_Value == 1 then
                    love.graphics.draw(Corpo_Infantil, 167, 73, 0, 0.28, 0.28)
                    love.graphics.setColor(166/255, 204/255, 217/255)
                    love.graphics.draw(Roupa_Basica_Infantil, 167, 73, 0, 0.28, 0.28)

                    Pawn_Corpo = "Corpo_Infantil"
                    Pawn_Roupa = "Roupa_Infantil"
                    Pawn_Xenotipo = "Humano"

                elseif Pawn_Xenotipo_Value == 2 then
                    love.graphics.setColor(1, 1, 1)
                    love.graphics.draw(Corpo_Dissecado_Infantil, 167, 73, 0, 0.28, 0.28)
                    Pawn_Corpo = "Corpo_Dissecado"
                    Pawn_Roupa = "Roupa_SemRoupa"
                    Pawn_Xenotipo = "Morto"
                end
            end

            love.graphics.setColor(corDePele[1], corDePele[2], corDePele[3])

            if Pawn_Xenotipo_Value == 1 then
                if Cabeça_Female_Aleatoria == 1 then
                    love.graphics.draw(Female_Cabeca_01, 167, 65, 0, 0.28, 0.28)
                    Pawn_Cabeca = "Cabeça_1"

                elseif Cabeça_Female_Aleatoria == 2 then
                    love.graphics.draw(Female_Cabeca_02, 167, 65, 0, 0.28, 0.28)
                    Pawn_Cabeca = "Cabeça_2"

                elseif Cabeça_Female_Aleatoria == 3 then
                    love.graphics.draw(Female_Cabeca_03, 167, 65, 0, 0.28, 0.28)
                    Pawn_Cabeca = "Cabeça_3"

                elseif Cabeça_Female_Aleatoria == 4 then
                    love.graphics.draw(Female_Cabeca_04, 167, 65, 0, 0.28, 0.28)
                    Pawn_Cabeca = "Cabeça_4"

                elseif Cabeça_Female_Aleatoria == 5 then
                    love.graphics.draw(Female_Cabeca_05, 167, 65, 0, 0.28, 0.28)
                    Pawn_Cabeca = "Cabeça_5"

                elseif Cabeça_Female_Aleatoria == 6 then
                    love.graphics.draw(Female_Cabeca_06, 167, 65, 0, 0.28, 0.28)
                    Pawn_Cabeca = "Cabeça_6"
                end

            elseif Pawn_Xenotipo_Value == 2 then
                love.graphics.setColor(1, 1, 1)
                love.graphics.draw(Caveira_Cabeca, 167, 65, 0, 0.28, 0.28)
                Pawn_Cabeca = "Caveira"
            end
        end
        
        
        
-- Reorganizar cores
--[[
	Nomes Masculinos:
	Hakan Hako Arman
	Unkow Schlitzer Manus
	Charles Charlzie Zillioner

	Cor Letra Destaque: 222/222/75
]]

        if Pawn_Xenotipo_Value == 1 then
        
        
	-- Switch
	if Cor_Cabelo_Aleatorio == 1 then
		love.graphics.setColor(130/255, 82/255, 46)
	elseif Cor_Cabelo_Aleatorio == 2 then
		love.graphics.setColor(71/255, 64/255, 59/255)
	elseif Cor_Cabelo_Aleatorio == 3 then
		love.graphics.setColor(82/255, 74/255, 68/255)
	elseif Cor_Cabelo_Aleatorio == 4 then
		love.graphics.setColor(121/255, 77/255, 43/255)
	elseif Cor_Cabelo_Aleatorio == 5 then
		love.graphics.setColor(57/255, 46/255, 34/255)
	elseif Cor_Cabelo_Aleatorio == 6 then
		love.graphics.setColor(91/255, 59/255, 32/255)
	elseif Cor_Cabelo_Aleatorio == 7 then
		love.graphics.setColor(69/255, 55/255, 41/255)
	elseif Cor_Cabelo_Aleatorio == 8 then
		love.graphics.setColor(80/255, 51/255, 28/255)
	elseif Cor_Cabelo_Aleatorio == 9 then
		love.graphics.setColor(81/255, 52/255, 29/255)
	elseif Cor_Cabelo_Aleatorio == 10 then
		love.graphics.setColor(78/255, 70/255, 65/255)
	elseif Cor_Cabelo_Aleatorio == 11 then
		love.graphics.setColor(33/255, 61/255, 220/255)
	elseif Cor_Cabelo_Aleatorio == 12 then
		love.graphics.setColor(68/255, 191/255, 38/255)
	elseif Cor_Cabelo_Aleatorio == 13 then
		love.graphics.setColor(204/255, 204/255, 204/255)
	elseif Cor_Cabelo_Aleatorio == 14 then
		love.graphics.setColor(183/255, 183/255, 183/255)
	elseif Cor_Cabelo_Aleatorio == 15 then
		love.graphics.setColor(60/255, 39/255, 19/255)
	elseif Cor_Cabelo_Aleatorio == 16 then
		love.graphics.setColor(88/255, 80/255, 74/255)
	elseif Cor_Cabelo_Aleatorio == 17 then
		love.graphics.setColor(50/255, 186/255, 177/255)
	elseif Cor_Cabelo_Aleatorio == 18 then
		love.graphics.setColor(226/255, 192/255, 148/255)
	elseif Cor_Cabelo_Aleatorio == 19 then
		love.graphics.setColor(188/255, 142/255, 82/255)
	elseif Cor_Cabelo_Aleatorio == 20 then
		love.graphics.setColor(242/255, 206/255, 159/255)
	end

elseif Pawn_Xenotipo_Value == 2 then
	if Cor_Cabelo_Aleatorio > 1 and Cor_Cabelo_Aleatorio <= 10 then
		-- vazio
	elseif Cor_Cabelo_Aleatorio > 10 and Cor_Cabelo_Aleatorio < 15 then
		-- vazio
	elseif Cor_Cabelo_Aleatorio > 15 and Cor_Cabelo_Aleatorio <= 20 then
		-- vazio
	end
end










if Pawn_Sex == 1 and Pawn_Xenotipo_Value == 1 then
	if Cabelo_Male_Aleatoria == 1 then
		love.graphics.draw(Cabelo_Afro, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Afro"
	elseif Cabelo_Male_Aleatoria == 2 then
		love.graphics.draw(Cabelo_Bob, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Bob"
	elseif Cabelo_Male_Aleatoria == 3 then
		love.graphics.draw(Cabelo_Bowlcut, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Bowlcut"
	elseif Cabelo_Male_Aleatoria == 4 then
		love.graphics.draw(Cabelo_Braidbun, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Braidbun"
	elseif Cabelo_Male_Aleatoria == 5 then
		love.graphics.draw(Cabelo_Bravo, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Bravo"
	elseif Cabelo_Male_Aleatoria == 6 then
		love.graphics.draw(Cabelo_Burgundy, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Burgundy"
	elseif Cabelo_Male_Aleatoria == 7 then
		love.graphics.draw(Cabelo_Elder, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Elder"
	elseif Cabelo_Male_Aleatoria == 8 then
		love.graphics.draw(Cabelo_Fringe, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Fringe"
	elseif Cabelo_Male_Aleatoria == 9 then
		love.graphics.draw(Cabelo_Gaston, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Gaston"
	elseif Cabelo_Male_Aleatoria == 10 then
		love.graphics.draw(Cabelo_GreasySwoop, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_GreasySwoop"
	elseif Cabelo_Male_Aleatoria == 11 then
		love.graphics.draw(Cabelo_Junkie, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Junkie"
	elseif Cabelo_Male_Aleatoria == 12 then
		Pawn_Cabelo = "Cabelo_Careca"
	elseif Cabelo_Male_Aleatoria == 13 then
		love.graphics.draw(Cabelo_Keeper, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Keeper"
	elseif Cabelo_Male_Aleatoria == 14 then
		love.graphics.draw(Cabelo_Lackland, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Lackland"
	elseif Cabelo_Male_Aleatoria == 15 then
		love.graphics.draw(Cabelo_Locks, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Locks"
	elseif Cabelo_Male_Aleatoria == 16 then
		love.graphics.draw(Cabelo_Mess, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Mess"
	elseif Cabelo_Male_Aleatoria == 17 then
		love.graphics.draw(Cabelo_Mohawk, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Mohawk"
	elseif Cabelo_Male_Aleatoria == 18 then
		love.graphics.draw(Cabelo_Mop, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Mop"
	elseif Cabelo_Male_Aleatoria == 19 then
		love.graphics.draw(Cabelo_Randy, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Randy"
	elseif Cabelo_Male_Aleatoria == 20 then
		love.graphics.draw(Cabelo_Recruit, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Recruit"
	elseif Cabelo_Male_Aleatoria == 21 then
		love.graphics.draw(Cabelo_Revolt, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Revolt"
	elseif Cabelo_Male_Aleatoria == 22 then
		love.graphics.draw(Cabelo_Rockstar, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Rockstar"
	elseif Cabelo_Male_Aleatoria == 23 then
		love.graphics.draw(Cabelo_Rookie, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Rookie"
	elseif Cabelo_Male_Aleatoria == 24 then
		love.graphics.draw(Cabelo_Wavy, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Wavy"
	elseif Cabelo_Male_Aleatoria == 25 then
		love.graphics.draw(Cabelo_Warden, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Warden"
	elseif Cabelo_Male_Aleatoria == 26 then
		love.graphics.draw(Cabelo_Tuft, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Tuft"
	elseif Cabelo_Male_Aleatoria == 27 then
		love.graphics.draw(Cabelo_Troubadour, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Troubadour"
	elseif Cabelo_Male_Aleatoria == 28 then
		love.graphics.draw(Cabelo_Topdog, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Topdog"
	elseif Cabelo_Male_Aleatoria == 29 then
		love.graphics.draw(Cabelo_Sticky, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Sticky"
	elseif Cabelo_Male_Aleatoria == 30 then
		love.graphics.draw(Cabelo_Spikes, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Spikes"
	elseif Cabelo_Male_Aleatoria == 31 then
		love.graphics.draw(Cabelo_ShaveTopBraid, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_ShaveTopBraid"
	elseif Cabelo_Male_Aleatoria == 32 then
		love.graphics.draw(Cabelo_Shaved, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Shaved"
	end

elseif Pawn_Xenotipo_Value == 2 and Pawn_Sex == 1  then
	-- vazio
end

if Pawn_Sex == 1 then

love.graphics.setColor(20/255, 20/255, 21/255)
love.graphics.rectangle("fill", 225-2, 70-2, 38+16+8, 10+8)

love.graphics.setColor(180/255, 180/255, 180/255)
love.graphics.rectangle("line", 225-2, 70-2, 38+16+8, 10+8)

love.graphics.setColor(20/255, 20/255, 21/255)
love.graphics.rectangle("fill", 280-2+10, 70-2, 38+16+8, 10+8)

love.graphics.setColor(180/255, 180/255, 180/255)
love.graphics.rectangle("line", 280-2+10, 70-2, 38+16+8, 10+8)

love.graphics.setColor(0.5, 0.5, 1)
love.graphics.setFont(b8)
love.graphics.print("Masculino", 225, 90)
love.graphics.setColor(1, 1, 1)
love.graphics.print("Idade " .. Pawn_Idade, (225+45), 90)

if Pawn_Idade >= 18 and Pawn_Idade <= 50 then
	love.graphics.setColor(66/255, 148/255, 98/255)
	love.graphics.print("Adulto", (225+45+40), 90)
elseif Pawn_Idade >= 60 then
    love.graphics.setColor(66/255, 148/255, 98/255)
	love.graphics.print("Idoso", (225+45+40), 90)
elseif Pawn_Idade < 18 then
	love.graphics.setColor(66/255, 148/255, 98/255)
	love.graphics.print("Criança", (225+45+40), 90)
end

love.graphics.setColor(1, 1, 1)
love.graphics.setFont(b6)
love.graphics.print(nomeAleatorio, 225+2, 70+2)
love.graphics.setColor(1, 1, 1)
love.graphics.print(Pawn_Xenotipo, 292+70, 72)
love.graphics.setColor(1, 1, 1)
love.graphics.setFont(b4)
end



-- FEMININO
if Pawn_Sex == 2 and Pawn_Xenotipo_Value == 1 then
	if Cabelo_Female_Aleatoria == 1 then
		love.graphics.draw(Cabelo_Cleopatra, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Cleopatra"
	elseif Cabelo_Female_Aleatoria == 2 then
		love.graphics.draw(Cabelo_Curly, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Curly"
	elseif Cabelo_Female_Aleatoria == 3 then
		love.graphics.draw(Cabelo_Cute, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Cute"
	elseif Cabelo_Female_Aleatoria == 4 then
		love.graphics.draw(Cabelo_Decent, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Decent"
	elseif Cabelo_Female_Aleatoria == 5 then
		love.graphics.draw(Cabelo_Fancybun, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Fancybun"
	elseif Cabelo_Female_Aleatoria == 6 then
		love.graphics.draw(Cabelo_Flowy, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Flowy"
	elseif Cabelo_Female_Aleatoria == 7 then
		love.graphics.draw(Cabelo_Frozen, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Frozen"
	elseif Cabelo_Female_Aleatoria == 8 then
		love.graphics.draw(Cabelo_Long, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Long"
	elseif Cabelo_Female_Aleatoria == 9 then
		love.graphics.draw(Cabelo_Pigtails, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Pigtails"
	elseif Cabelo_Female_Aleatoria == 10 then
		love.graphics.draw(Cabelo_Ponytails, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Ponytails"
	elseif Cabelo_Female_Aleatoria == 11 then
		love.graphics.draw(Cabelo_Senorita, 167, 65, 0, 0.28, 0.28)
		Pawn_Cabelo = "Cabelo_Senorita"
	elseif Cabelo_Female_Aleatoria == 12 then
		Pawn_Cabelo = "Cabelo_Careca"
	end
elseif Pawn_Xenotipo_Value == 2 and Pawn_Sex == 2 then
	-- vazio
end

if Pawn_Sex == 2 then

love.graphics.setColor(20/255, 20/255, 21/255)
love.graphics.rectangle("fill", 225-2, 70-2, 38+16+8, 10+8)

love.graphics.setColor(180/255, 180/255, 180/255)
love.graphics.rectangle("line", 225-2, 70-2, 38+16+8, 10+8)

love.graphics.setColor(20/255, 20/255, 21/255)
love.graphics.rectangle("fill", 280-2+10, 70-2, 38+16+8, 10+8)

love.graphics.setColor(180/255, 180/255, 180/255)
love.graphics.rectangle("line", 280-2+10, 70-2, 38+16+8, 10+8)

love.graphics.setColor(1, 0.5, 1)
love.graphics.setFont(b8)
love.graphics.print("Feminino", 225, 90)
love.graphics.setColor(1, 1, 1)
love.graphics.print("Idade " .. Pawn_Idade, (225+45), 90)

if Pawn_Idade >= 18 then
	love.graphics.setColor(66/255, 148/255, 98/255)
	love.graphics.print("Adulto", (225+45+40), 90)
elseif Pawn_Idade < 18 then
	love.graphics.setColor(66/255, 148/255, 98/255)
	love.graphics.print("Criança", (225 + 45 + 40), 90)
end

love.graphics.setColor(1, 1, 1)
love.graphics.setFont(b6)
love.graphics.print(nomeAleatorio, 225 + 2, 70 + 2)
love.graphics.print(ultimo_nomeAleatorio, 280 + 2 + 10, 70 + 2)

love.graphics.setColor(1, 1, 1)
love.graphics.print(Pawn_Xenotipo, 292 + 70, 72)

love.graphics.setColor(1, 1, 1)
love.graphics.setFont(b4)
end
end
end


function DB_Choose_Pawn()
    if menu == 4 then
    
	
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
    
        love.graphics.setColor(61/255,69/255,76/255)
        love.graphics.rectangle("line", 100, 10, 500, 298)
        
        Quantity_Pawns = Start_Resources.People 
        
        love.graphics.setColor(1,1,1)
        love.graphics.setFont(b2)
        love.graphics.print("Criação de Personagem", 110,25)
        
        
        
        love.graphics.setFont(b4)
        love.graphics.setColor(1,1,1)
        
                
        Botão_Padrão("Voltar", 110, 250, 120, 46)
        
                
        Botão_Padrão("Iniciar", 465, 250, 120, 46)
        
        
        love.graphics.setFont(b6)
        Botão_Padrão("Aleatorizar", 465, 60, 80, 35)
        love.graphics.setFont(b4)
        
        Draw_Mini_Blocks()
        
        
    end
        --[[love.graphics.setColor(54/255, 54/255, 54/255)
        love.graphics.rectangle("fill", 320, 60, 265, 175)
    
        love.graphics.setColor(76/255, 77/255, 79/255)
        love.graphics.rectangle("line", 320, 60, 265, 175)
        ]]
end
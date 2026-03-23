
function Vertical_de_3()
    --if Adm == true then
        love.graphics.setColor(1,0,0)
        love.graphics.line(Screen_Width/3,0, Screen_Width/3, Screen_Width)
    
        love.graphics.setColor(1,0,0)
        love.graphics.line((Screen_Width/3) + (Screen_Width/3),0, (Screen_Width/3) + (Screen_Width/3), Screen_Width)
    
        Div3_BackScreen_V = (Screen_Width/3) + (Screen_Width/3)
        Div3_FrontScreen_V = (Screen_Width/3)
    
        love.graphics.print("X = "..Div3_FrontScreen_V,Screen_Width/3,10)
        love.graphics.print("X = "..Div3_BackScreen_V,(Screen_Width/3) + (Screen_Width/3), 10)
    --else
    
   --end
end


function Horizontal_de_3()

        love.graphics.setColor(1,0,0)
        love.graphics.line(0,Screen_Height/3, Screen_Width, Screen_Height/3)
        
        
        Div3_FrontScreen_H = (Screen_Height/3)
        
        love.graphics.print("Y = "..Div3_FrontScreen_H,0,Screen_Height/3)
        
        
        love.graphics.line(0,(Screen_Height/3)+ (Screen_Height/3), (Screen_Width), (Screen_Height/3) + (Screen_Height/3))
            
        Div3_BackScreen_H = (Screen_Height/3) + (Screen_Height/3)
    
        love.graphics.print("Y = "..Div3_BackScreen_H,0, (Screen_Height/3) + (Screen_Height/3))


end
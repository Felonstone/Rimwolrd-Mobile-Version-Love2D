
-- Garanta que a biblioteca socket esteja disponível
local socket = require("socket")

-- Função para obter o endereço IP local
function getLocalIP()
  local ip
  
  -- Cria um socket UDP temporário
  local s = socket.udp()
  
  -- Define um endereço de destino conhecido (pode ser qualquer servidor público, como o do Google)
  s:setpeername("8.8.8.8", 80)
  
  -- Pega o nome do socket. Isso força o SO a associar uma interface de rede, revelando o IP local
  ip, _ = s:getsockname()
  
  -- Fecha o socket
  s:close()
  
  return ip
end





function Multiplayer_Load()
    
    local my_ip = getLocalIP()
  if my_ip then
    
  else
    
  end
    
    
    
    Multiplayer_Status = "False"
    self_ip = my_ip
    pointer_ip = "192.168.64.1"
    room = ""
    Host_or_Client = ""
    status_connection = "Desconectado!"
    

end

function Multiplayer_update()



end


function Multiplayer_Draw()



end
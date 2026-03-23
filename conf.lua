function love.conf(t)
    t.title = "Rimwolrd Mobile Version"
    t.author = "Felonstone"
	t.version = "11.4"
	t.window.icon = 'Assets/tier-silver.png'


	t.audio.mixwithsystem = true 
	t.externalstorage = true
    t.console = true
	--t.window.borderless = true
    t.window.fullscreen = false
    t.window.resizable = true
    --t.window.vsync = 1
	--t.window.msaa = 0  
	--t.window.highdpi = true
	--t.window.usedpiscale = true

	t.modules.data = true
    t.modules.audio = true
    t.modules.keyboard = false
    t.modules.event = true
    t.modules.image = true
    t.modules.graphics = true
    t.modules.timer = true
    t.modules.mouse = false
    t.modules.sound = true
    t.modules.joystick = false
    t.modules.physics = false
	t.modules.thread = true  
end

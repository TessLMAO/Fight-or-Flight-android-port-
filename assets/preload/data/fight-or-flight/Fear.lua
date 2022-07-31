local fear = 0

function onCreate()

       makeLuaSprite('fearBar', 'starved/fearbar', 1190, 150)
       scaleObject('fearBar', 1.4, 1.4)
       addLuaSprite('fearBar', true)
       setObjectCamera('fearBar', 'HUD')

       makeLuaSprite('fearBG', 'starved/fearbarBG', 1190, 525)
       scaleObject('fearBG', 1.4, 0.05)
       addLuaSprite('fearBG', true)
       setObjectCamera('fearBG', 'HUD')

       setObjectOrder('fearBG', 1)
       setObjectOrder('fearBar', 2)
end

function onUpdate()

     if fear == 100 then
          setProperty('health', -501)
     end 

end

function noteMiss(id, direction, noteType, isSustainNote)
   if fear < 100 then
     fear = fear + 2
     setProperty('fearBG.scale.y', getProperty('fearBG.scale.y')+ 0.028)
     setProperty('fearBG.y', getProperty('fearBG.y')- 3.6)
   end
end
function onCreate()
	-- background shit
	makeLuaSprite('stage', 'starved/stage', 100, -210);
	setLuaSpriteScrollFactor('stage', 1.0, 1.0);
   scaleObject('stage', 1.55, 1.55);
	
	makeLuaSprite('light', 'starved/light', 120, -220);
	setLuaSpriteScrollFactor('light', 1.0, 1.0);
	scaleObject('light', 1.6, 1.6);
   runTimer('Loop', 0.1);
  
	addLuaSprite('stage', false);
   addLuaSprite('light', true);
	
end
function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Loop' then
doTweenAlpha('light','light', 0,1.5)
runTimer('LoopEnd', 1.2);
elseif tag == 'LoopEnd' then
doTweenAlpha('light','light',1, 1.3)
runTimer('Loop', 1.2);
 end
end
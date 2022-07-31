function onSongStart()

         setPropertyFromClass('ClientPrefs', 'middleScroll', true)
        noteTweenAlpha('dadinvi1', 0, 0, 0.1, 'linear')
        noteTweenAlpha('dadinvi2', 1, 0, 0.1, 'linear')
        noteTweenAlpha('dadinvi3', 2, 0, 0.1, 'linear')
        noteTweenAlpha('dadinvi4', 3, 0, 0.1, 'linear')

end

function onGameOver()
     if getProperty('health') > -500 then --  bf cant die
          return Function_Stop
     else
          return Function_Continue
     end
end
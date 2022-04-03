function onCreate()
makeLuaSprite('introtext', 'texts/text-swing', -650, 0);
setProperty('introtext.scale.x', 0.50)
setProperty('introtext.scale.y', 0.50)
setObjectCamera('introtext', 'other');
addLuaSprite('introtext', true);
end

function onStepHit()
    if curStep >= 0 then
        doTweenX('textTween', 'introtext', -150, 1.1, 'quintOut')
    end
    
    if curStep >= 64 then
        doTweenAngle('textspin', 'introtext', 720, 1.1, 'quintOut')
        doTweenAlpha('textfade', 'introtext', 0, 1.1, 'quintOut')
        doTweenX('textscalex', 'introtext.scale', 0, 1.1, 'quintOut')
        doTweenY('textscaley', 'introtext.scale', 0, 1.1, 'quintOut')
    end
end
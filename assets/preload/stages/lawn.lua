function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-christmas'); --Character json file for the death animation
	-- background shit
	makeLuaSprite('sky', 'lawn/sky', -100, -100);
	setScrollFactor('sky', 0, 0);
	scaleObject('sky', 1, 1);

	makeLuaSprite('cloud', 'lawn/cloud', -100, 0);
	setScrollFactor('cloud', 1, 1);
	scaleObject('cloud', 1.5, 1.5);

	makeLuaSprite('back2', 'lawn/back', 320, 730);
	setScrollFactor('back2', 0.9, 0.9);

	makeLuaSprite('back', 'lawn/back', -160, 730);
	setScrollFactor('back', 0.9, 0.9);

	makeLuaSprite('ground', 'lawn/ground', -640, 790);
	setScrollFactor('ground', 1, 1);
	scaleObject('ground', 1, 1.2);

	makeAnimatedLuaSprite('gf', 'lawn/gf-zombie', 1200,520);
	addAnimationByPrefix('gf', 'gf', 'GF Dancing Beat0',24,true)
	objectPlayAnimation('gf', 'gf',false)
	scaleObject('gf', 0.4,0.4);
	setScrollFactor('gf', 0.9, 0.9);

	makeAnimatedLuaSprite('snow', 'lawn/snow', -400,-1200);
	addAnimationByPrefix('snow', 'fal', 'snow fall',24,true)
	objectPlayAnimation('snow', 'fal',false)
	setObjectCamera('snow', 'camother', true);
	scaleObject('snow', 1.2, 1.2);

	makeLuaSprite('wite', 'lawn/wite', -640, 490);
	setScrollFactor('wite', 1, 1);
	scaleObject('wite', 1, 1);

	makeLuaSprite('fenc', 'lawn/fence', -100, 630);
	setScrollFactor('fenc', 0.9, 0.9);
	scaleObject('fenc', 1.2, 1.2);

	makeLuaSprite('fenc2', 'lawn/fence', 100, 630);
	setScrollFactor('fenc2', 0.9, 0.9);
	scaleObject('fenc2', 1.2, 1.2);

	addLuaSprite('sky', false);
	addLuaSprite('cloud', false);
	addLuaSprite('fenc', false);
	addLuaSprite('fenc2', false);
	addLuaSprite('back2', false);
	addLuaSprite('back', false);
	addLuaSprite('gf', false);
	addLuaSprite('ground', false);
	addLuaSprite('wite', true);
	addLuaSprite('snow', true);


	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
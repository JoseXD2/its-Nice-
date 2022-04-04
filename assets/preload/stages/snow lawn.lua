function onCreate()
	-- background shit
	makeLuaSprite('ground', 'lawn/ground', -12.25, -467.5);
	setScrollFactor('ground', 1, 1);
	
	makeLuaSprite('back', 'back', -650, 600);
	setScrollFactor('back', 0.9, 0.9);

	end

	addLuaSprite('ground', false);
	addLuaSprite('back', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
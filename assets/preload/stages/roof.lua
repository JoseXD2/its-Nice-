function onCreate()
	makeLuaSprite('sky', 'winter-melon/sky', -2199.75, -1062.5);
	scaleObject('sky', 2, 2);
	setScrollFactor('sky', 0, 0);
	
	makeLuaSprite('clouds', 'winter-melon/clouds', -1317.7, -310.9);
	setScrollFactor('clouds', 0.3, 1);

	makeLuaSprite('antenna', 'winter-melon/antenna', 1886.3, 112.05);
	setScrollFactor('antenna', 1, 1);

	makeLuaSprite('chimene', 'winter-melon/chimene', -1484.85, 152.75);
	setScrollFactor('chimene', 1, 1);

	makeLuaSprite('sidesnowidk', 'winter-melon/sidesnowidk', -1762.05, 725);
	setScrollFactor('sidesnowidk', 1, 1);

	makeLuaSprite('backrows', 'winter-melon/backrows', -1289.4, 528.7);
	setScrollFactor('backrows', 1, 1);

	makeAnimatedLuaSprite('magnetshroom', 'winter-melon/magnetshroom', 896.3, 252.05);
	addAnimationByIndices('magnetshroom', 'danceLeft', 'magnetnormal', '0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14', 24);
	addAnimationByIndices('magnetshroom', 'danceRight', 'magnetnormal', '15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29', 24);
	addAnimationByPrefix('magnetshroom', 'sleep', 'magnetshroom', 24, false)
	addAnimationByPrefix('magnetshroom', 'awake', 'magnetwake', 24, false)
	setScrollFactor('magnetshroom', 1, 1);

	makeAnimatedLuaSprite('bean', 'winter-melon/bean', 994.85, 312.4);
	addAnimationByPrefix('bean', 'bean', 'bean', 24, false);

	makeAnimatedLuaSprite('tallnut', 'winter-melon/tallnut', 572.45, 164.65);
	addAnimationByIndices('tallnut', 'danceLeft', 'tallnutanim', '0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14', 24);
	addAnimationByIndices('tallnut', 'danceRight', 'tallnutanim', '29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40', 24);
	setScrollFactor('tallnut', 1, 1);

	makeLuaSprite('main', 'winter-melon/main', -1207.4, 799.55);
	setScrollFactor('main', 1, 1);

	makeLuaSprite('row', 'winter-melon/row1', -1336.9, 748.8);
	setScrollFactor('row', 1, 1);

	makeLuaSprite('window', 'winter-melon/window', 365, 1061.3);
	setScrollFactor('window', 1, 1);

	makeAnimatedLuaSprite('pot', 'winter-melon/pot', 300.8, 637.25);
	addAnimationByPrefix('pot', 'idle', 'potanim', 24, false);
	setScrollFactor('pot', 1, 1);

	makeAnimatedLuaSprite('pot2', 'winter-melon/pot', -255.85, 752.6);
	addAnimationByPrefix('pot2', 'idle', 'potanim', 24, false);
	setScrollFactor('pot2', 1, 1);

	makeAnimatedLuaSprite('sunflower', 'winter-melon/sunflower', -190.35, 490);
	addAnimationByPrefix('sunflower', 'idle', 'sunflower idle', 24, false);
	setScrollFactor('sunflower', 1, 1);

	addLuaSprite('sky', false);
	addLuaSprite('clouds', false);
	addLuaSprite('antenna', false);
	addLuaSprite('chimene', false);
	addLuaSprite('sidesnowidk', false);
	addLuaSprite('backrows', false);
	addLuaSprite('magnetshroom', false);
	addLuaSprite('tallnut', false);
	addLuaSprite('main', false);
	addLuaSprite('row', false);
	addLuaSprite('window', false);
	addLuaSprite('pot', false);
	addLuaSprite('pot2', false);
	addLuaSprite('sunflower', false);
end
function onBeatHit()
	if curBeat == 97 then
		addLuaSprite('bean');
		objectPlayAnimation('bean', 'bean', true);
	end
	objectPlayAnimation('pot', 'idle', true);
	objectPlayAnimation('pot2', 'idle', true);
	objectPlayAnimation('sunflower', 'idle', true);
	if curBeat % 2 == 0 then
		if curBeat >= 99 then
			objectPlayAnimation('magnetshroom', 'danceLeft', true);
			removeLuaSprite('bean');
		else
			objectPlayAnimation('magnetshroom', 'sleep', true);
		end
		if curBeat % 4 == 0 then
			objectPlayAnimation('tallnut', 'danceRight', true);
		else
			objectPlayAnimation('tallnut', 'danceLeft', true);
		end
	else
		if curBeat >= 99 then
			objectPlayAnimation('magnetshroom', 'danceRight', true);
		end
		if curBeat % 4 ~= 0 then
			objectPlayAnimation('tallnut', 'danceLeft', true);
		end
	end
end
function onStartCountdown()
	objectPlayAnimation('magnetshroom', 'sleep');
end
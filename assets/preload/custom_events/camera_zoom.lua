function onEvent(name, value1, value2)
	if name == 'camera zoom' then
        zoom = tonumber(value1);
        setProperty('defaultCamZoom',zoom)
	end
end
--[[
	Author : Paweku
	License : MIT
]]

Music = {
	link = {
		rmf_max = "http://www.rmfon.pl/n/rmfmaxxx.pls"; 
		rmf_fm  = "http://217.74.72.11:8000/rmf_fm";
	};
	{
	pos = {
		1479.13, -1686.51, 23.56
	}; 
	dim      = 0;
	int      = 0; 
	distance = 150;
	volume   = 0.5
	};

}
for i,v in ipairs(clientMusic) do
	v.sound=playSound3D(clientMusic.link.rmf_max, v.pos[1], v.pos[2], v.pos[3], true)
	setSoundMaxDistance(v.sound, v.distance)
	setElementDimension(v.sound, v.dim)
	setElementInterior(v.sound, v.int)
	setSoundVolume(v.sound, v.volume)
end
--[[
    Author : Paweku
    License : MIT
]]

addEventHandler("onResourceStop", getResourceRootElement(getThisResource()), function()
    for k,v in ipairs(getResources()) do
        if string.find(getResourceName(v), "gm") then
            stopResource(v)
            outputDebugString('autostart | '..getResourceName(v)..' Stopped all resources !')
	    end
    end
end)

addEventHandler("onResourceStart", getResourceRootElement(getThisResource()), function()
    for k,v in ipairs(getResources()) do
        if string.find(getResourceName(v), "gm") then
            startResource(v)
            outputDebugString('autostart | '..getResourceName(v)..' Started all resources !')
        end
    end
end)

--[[Example 
You have 3 scripts and their name is 
gm_auth
gm_core
gm_font 

And you need to add a prefix to resource name
]]
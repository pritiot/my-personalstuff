-- nothing yet

local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if self == game and method == "GetService" and (...) == "MicroProfilerService" then
        return {
            DumpToFileAsync = function() 
                return "C:\\Users\\My name is Velocity Remastered and im gonna\\AppData\\Local\\Roblox\\logs\\67.html" 
            end
        }
    end
    
    return oldNamecall(self, ...)
end))

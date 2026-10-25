require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Razor = class("Razor", NpcActorProxy)
Razor.defaultAlias = "Razor"

function Razor:Start()
    print("start!Razor")
end

function Razor:OnDestroy()
    print("Razor " .. self.configID .. " destroied")
end

return Razor
